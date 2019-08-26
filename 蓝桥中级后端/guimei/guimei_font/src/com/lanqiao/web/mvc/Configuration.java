package com.lanqiao.web.mvc;

import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.reflect.MethodUtils;
import org.apache.log4j.Logger;

import java.io.File;
import java.lang.reflect.Method;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.*;

/**
 * @Author 天份
 * @Date 2019/8/8 0008 22:09
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class Configuration {

    /**
     *  通过反射获取包所在的位置
     * @return
     */
    private String getControllerPackage(){
        return ResourceBundle.getBundle("application").getString("controller.package");
    }

    Logger logger = Logger.getLogger(Configuration.class);

    /**
     *  查找控制器下所有带有注解控制器类，并将其封装map 实例中
     * @return Map<String, ControllerMapping>
     */
    public Map<String, ControllerMapping> config(){
        // 返回该类根，目录/D:/IDEA/workSpace/jsp/out/production/11_onlineBuyFoodSystem/
        URL url = Configuration.class.getResource("/");
        //logger.debug("1111" + url);

        try {
            String controllerPackage = getControllerPackage();
            File classPathRoot = new File(url.toURI());
            // 返回该类的根目录 + 包的路径
            String packageDirectoryPage = classPathRoot + "/" + controllerPackage.replaceAll("\\.", "/");
            logger.debug("控制器目录：" + packageDirectoryPage);
            File controllerPackageDirectory = new File(packageDirectoryPage);
            // 获取目标包下面的类
            String[] controllerClassNames = controllerPackageDirectory.list((dir, name) -> {
                return name.endsWith(".class");
            });

            logger.debug(Arrays.toString(controllerClassNames));
            // map<请求的路径path, ControllerMapping>
            Map<String, ControllerMapping> controllerMappingMap = Collections.synchronizedMap(new HashMap<>());

            for (String controllerClassName : controllerClassNames) {
                // 获取完整的类名
                String controllerFullName = controllerPackage + "." + StringUtils.substringBefore(controllerClassName, ".class");
                logger.debug(controllerFullName);
                // 动态加载类名
                Class<?> controllerClass = ClassUtils.getClass(controllerFullName);
                Object controller = controllerClass.newInstance();

                // 判断是不是我们想要的类
                if (controllerClass.isAnnotationPresent(Controller.class)) {
                    // 取得有注解的类
                    Method[] handleMethods = MethodUtils.getMethodsWithAnnotation(controllerClass, RequestMapping.class, true, true);
                    // 遍历有注解的类
                    for (Method handleMethod : handleMethods) {
                        // 获取方法上面注解的值
                        String path = handleMethod.getAnnotation(RequestMapping.class).value();
                        // 将方法上面注解的值对应的类名和方法压入
                        controllerMappingMap.put(path, new ControllerMapping(controllerClass, handleMethod));
                    }
                }
            }
            return controllerMappingMap;
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        new Configuration().config();
        //System.out.println(new Configuration().getControllerPackage());
    }
}
