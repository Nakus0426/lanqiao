package com.lanqiao.web.mvc;

import java.lang.reflect.Method;

/**
 * @Author 天份
 * @Date 2019/8/8 0008 21:19
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class ControllerMapping {

    // 控制类实例
    private Class<?> controllerClass;
    // 处理请求方法的实例
    private Method handleMethod;

    public ControllerMapping() {
    }

    public ControllerMapping(Class<?> controllerClass, Method handleMethod) {
        this.controllerClass = controllerClass;
        this.handleMethod = handleMethod;
    }

    public Class<?> getControllerClass() {
        return controllerClass;
    }

    public void setControllerClass(Class<?> controllerClass) {
        this.controllerClass = controllerClass;
    }

    public Method getHandleMethod() {
        return handleMethod;
    }

    public void setHandleMethod(Method handleMethod) {
        this.handleMethod = handleMethod;
    }

    @Override
    public String toString() {
        return  controllerClass.getName() + "." + handleMethod.getName();
    }
}
