package com.lanqiao.web.mvc;



import com.google.gson.GsonBuilder;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.reflect.MethodUtils;
import org.apache.log4j.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/**
 * @author 张建平 on 2019/8/8.
 */
public class DispatcherServlet extends HttpServlet {

    Logger logger = Logger.getLogger(DispatcherServlet.class);

    Map<String, ControllerMapping> controllerMappingMap = null;

    /**
     * servlet的生命周期方法之一
     * @param config
     * @throws ServletException
     */
    @Override
    public void init(ServletConfig config) throws ServletException {
        // 可以获到Servlet中的配置参数
        //String james = config.getInitParameter("name");

        controllerMappingMap = new Configuration().config();
    }


    /**
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //获得请求的路径: /user/login.do
        String requestURI = request.getServletPath();
        requestURI = StringUtils.substringBefore(requestURI, ".do");

        logger.debug("请求的路径：" + requestURI);

        if (controllerMappingMap.containsKey(requestURI)){
            try {
                // 根据用户请求的路径获相应的控制器类和处理方法
                ControllerMapping controllerMapping = controllerMappingMap.get(requestURI);

                Class controllerClass = controllerMapping.getControllerClass();
                Method handleMethod = controllerMapping.getHandleMethod();

                Object controller = controllerClass.newInstance();

                // 获得处理方法上的参数类型列表
                Class<?>[] parameterTypes = handleMethod.getParameterTypes();
                Object[] methodParamValues = new Object[parameterTypes.length];

                // 处理方法上的每个参数
                for (int i=0; i<parameterTypes.length; i++) {
                    // 如果当前参数是请求HttpServletRequest
                    if (ClassUtils.isAssignable(parameterTypes[i], HttpServletRequest.class)){
                        methodParamValues[i] = request;
                    } else if(ClassUtils.isAssignable(parameterTypes[i], HttpServletResponse.class)) {
                        // 如果当前参数是响应 HttpServletResponse
                        methodParamValues[i] = response;
                    } else if(ClassUtils.isAssignable(parameterTypes[i], HttpSession.class)) {
                        // 如果当前参数是 HttpSession
                        methodParamValues[i] = request.getSession();
                    } else {
                        // 如果当前参数是JavaBean
                        Object pojo = parameterTypes[i].newInstance();

                        // 使用beanutils将请求中的参数组装到pojo对象中
                        BeanUtils.populate(pojo, request.getParameterMap());

                        methodParamValues[i] = pojo;
                    }
                }

                /*
                   调用目标方法，并根据调用返回的结果做出响应：
                     (a) 返回结果为字符串，并以 redirect: 开头表示重定向。
                     (b) 返回结果为字符串，不以 redirect: 开头表示请求转发(默认)。
                     (c) 返回结果为非字符串对象, 表示该请求为 AJAX 请求，则响应 JSON.
                     (d) 无返回结果，即返回 null，表示在控制器类的目标方法内已做出响应。
                */
                Object returnValue = MethodUtils.invokeMethod(controller, true, handleMethod.getName(), methodParamValues);

                logger.debug("控制器方法的返回结果：" + returnValue);

                // 返回结果是字符串形式
                if (returnValue != null && returnValue instanceof String){

                    // (a) 返回结果为字符串，并以 redirect: 开头表示重定向。
                    if (StringUtils.startsWith(returnValue.toString(), "redirect:")) {
                        // redirect:/success.jsp
                        response.sendRedirect(request.getContextPath() + StringUtils.substringAfter(returnValue.toString(), "redirect:"));
                        return; // 结束doPost()的执行

                    } else {
                        // (b) 返回结果为字符串，不以 redirect: 开头表示请求转发(默认)。
                        request.getRequestDispatcher(returnValue.toString()).forward(request, response);
                    }
                } else {
                    if (returnValue != null){
                        // 设置响应的内容MIME类型
                        response.setContentType("application/json;charset=utf-8");

                        // 返回结果 不是字符串形式, 如:JavaBean
                        String json = new GsonBuilder()
                                .setPrettyPrinting()
                                .setDateFormat("yyyy-MM-dd HH:mm:ss")
                                .create()
                                .toJson(returnValue);
                        response.getWriter().write(json);
                    }
                }
            } catch (NoSuchMethodException e) {
                logger.error("No Such Method Exception.", e);
            } catch (InstantiationException e) {
                logger.error("Instantiation Controller Exception.", e);
            } catch (IllegalAccessException e) {
                logger.error("非法访问异常。", e);
            } catch (InvocationTargetException e) {
                logger.error("调用控制器方法异常", e);
            }
        } else {
            throw new RuntimeException("非法请求，请求路径错误! " + requestURI);
        }

    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}

