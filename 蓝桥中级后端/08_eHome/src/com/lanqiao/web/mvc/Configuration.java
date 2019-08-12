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
 * config()访方法将执行以下下功能：
 *
 * 1. 找到package.controller包中所有标了@Controller注解控制器的类
 *
 * 2. 找到该类中所有标注了@RequestMapping处理请求的方法
 *
 * 3. 将本控制器类和处理请求方法封装到一个JavaBean（ControllerMapping）中便于随后使用
 *
 * 4. 将方法上@RequestMapping注解的属性值作为Map的key, 用ControllerMapping对象作为value存储在Map中。
 *
 */
public class Configuration {

    Logger logger = Logger.getLogger(Configuration.class);

    /**
     * 读取属性文件中控制器的包名
     *
     * @return
     */
    private String getControllerPackage() {
        ResourceBundle bundle = ResourceBundle.getBundle("application");
        return bundle.getString("controler.package");
    }

    /**
     * 查找控制器包下所有的控制器类，并将其封装到一个Map实例中
     *
     * @return Map<String, ControllerMapping>
     */
    public Map<String, ControllerMapping> config() {
        //com.lanqiao.store.controller
        URL url = Configuration.class.getResource("/");

        try {
            File classpathRoot = new File(url.toURI());

            // com.lanqiao.store.controller --> com/lanqiao/storecontroller
            String controllerPackage = getControllerPackage();
            String packageDirectoryPath = classpathRoot + "/" + controllerPackage.replaceAll("\\.", "/");


            File controlerPackageDirectory = new File(packageDirectoryPath);
            // 得到所有控制器简单类名
            String[] controllerClassNames = controlerPackageDirectory.list((dir, name) -> {
                return name.endsWith(".class");
            });

            // Map<请求的路径, ControllerMapping>
            // 将一个非线程安全的集体包装成多线程安全的集合
            Map<String, ControllerMapping> controllerMappingMap = Collections.synchronizedMap(new HashMap<String, ControllerMapping>());

            assert controllerClassNames != null;
            for (String controllerName : controllerClassNames) {
                String controllFullName = controllerPackage + "." + StringUtils.substringBefore(controllerName, ".class");

                // 动态加载控制器类
                Class<?> controllerClass = ClassUtils.getClass(controllFullName);

                if (controllerClass.isAnnotationPresent(Controller.class)) {

                    // 获得控制器类所有标记了@RequestMapping注解的方法
                    Method[] handleMethods = MethodUtils
                            .getMethodsWithAnnotation(controllerClass, RequestMapping.class, true, true);

                    // 获得每个方法上@RequestMapping注解的值
                    for (Method handleMethod : handleMethods) {
                        RequestMapping requestMapping = handleMethod.getAnnotation(RequestMapping.class);
                        String path = requestMapping.value();
                        controllerMappingMap.put(path, new ControllerMapping(controllerClass, handleMethod));
                    }
                }
            }

            return controllerMappingMap;
        } catch (URISyntaxException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }


    public static void main(String[] args) {
        new Configuration().config();
    }
}
