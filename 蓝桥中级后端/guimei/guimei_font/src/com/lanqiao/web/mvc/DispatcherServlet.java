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
 * @Author 天份
 * @Date 2019/8/8 0008 15:53
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class DispatcherServlet extends HttpServlet {

    Logger logger = Logger.getLogger(DispatcherServlet.class);

    Map<String, ControllerMapping> controllerMappingMap = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        //super.init(config);
        controllerMappingMap = new Configuration().config();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String requestURI = req.getServletPath();
        // 把 .do 去掉
        requestURI = StringUtils.substringBefore(requestURI, ".do");
        //  写入日志
        logger.debug("请求路径：" + requestURI);
        // 请求的路径存在
        if (controllerMappingMap.containsKey(requestURI)){
            try {

                // 获取请求的requestURI 的类和方法
                ControllerMapping controllerMapping = controllerMappingMap.get(requestURI);
                Class<?> controllerClass = controllerMapping.getControllerClass();
                Method handleMethod = controllerMapping.getHandleMethod();
                // 获取到的方法实例化
                Object controller = controllerClass.newInstance();
                // 获取需要处理方法的参数类型
                Class<?>[] parameterTypes = handleMethod.getParameterTypes();
                Object[] methodParameterValues = new Object[parameterTypes.length];

                // 遍历该方法上面的参数值
                for (int i = 0; i < parameterTypes.length; i++) {
                    // 如果当前参数是请求HttpServletRequest
                    if (ClassUtils.isAssignable(parameterTypes[i], HttpServletRequest.class)) {
                        methodParameterValues[i] = req;
                    }else if (ClassUtils.isAssignable(parameterTypes[i], HttpServletResponse.class)){
                        // 如果当前参数是响应 HttpServletResponse
                        methodParameterValues[i] = resp;
                    }else if (ClassUtils.isAssignable(parameterTypes[i], HttpSession.class)){
                        // 如果当前参数是HttpSession
                        methodParameterValues[i] = req.getSession();
                    }else {
                        // javaBean 对象
                        Object pojo = parameterTypes[i].newInstance();
                        // 使用beanutils将请求中的参数组装到pojo对象中
                        BeanUtils.populate(pojo, req.getParameterMap());
                        methodParameterValues[i] = pojo;
                    }
                }

            /*
               调用目标方法，并根据调用返回的结果做出响应：
                 (a) 返回结果为字符串，并以 redirect: 开头表示重定向。
                 (b) 返回结果为字符串，不以 redirect: 开头表示请求转发(默认)。
                 (c) 返回结果为非字符串对象, 表示该请求为 AJAX 请求，则响应 JSON.
                 (d) 无返回结果，即返回 null，表示在控制器类的目标方法内已做出响应。
             */
                Object retureValue = MethodUtils.invokeMethod(controller, true, handleMethod.getName(), methodParameterValues);
                logger.debug("控制方法的返回结果集" + retureValue);

                //  重定向 或 请求转发
                if (retureValue != null && retureValue instanceof String){
                    // 重定向
                    if (StringUtils.startsWith(retureValue.toString(), "redirect:")){
                        resp.sendRedirect(req.getContextPath() + StringUtils.substringAfter(retureValue.toString(), "redirect:"));
                        return;
                    }else {
                        // 请求转发
                        req.getRequestDispatcher(retureValue.toString()).forward(req, resp);
                    }
                }else {
                    if(retureValue != null){
                        // 设置响应的内容MIME类型
                        resp.setContentType("application/json;charset=utf-8");
                        // 返回结果 不是字符串形式, 如:JavaBean
                        String json = new GsonBuilder()
                                .setPrettyPrinting()
                                .setDateFormat("yyyy-MM-dd HH:mm:ss")
                                .create()
                                .toJson(retureValue);
                        resp.getWriter().write(json);
                    }
                }
            } catch (InstantiationException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                e.printStackTrace();
            }

        }else {
            throw new RuntimeException("非法请求，请求路径错误!" + requestURI);
        }
    }
}
