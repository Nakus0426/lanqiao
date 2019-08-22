package com.lanqiao.web.mvc;

import java.lang.reflect.Method;

/**
 * @author 张建平 on 2019/8/8.
 */
public class ControllerMapping {
    /** 控制器类实例 */
    private Class<?> controllerClass;

    /** 处理请求的方法实例 */
    private Method handleMethod;

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
