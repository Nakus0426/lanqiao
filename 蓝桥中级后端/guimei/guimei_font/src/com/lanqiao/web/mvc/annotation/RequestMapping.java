package com.lanqiao.web.mvc.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Author 天份
 * @Date 2019/8/8 0008 15:39
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
/* 注解作用域方法 */
@Target(ElementType.METHOD)
/* 保留 保留政策作用于运行时 */
@Retention(RetentionPolicy.RUNTIME)
public @interface RequestMapping {
    // 变量 默认为空
    public String value() default "";
}
