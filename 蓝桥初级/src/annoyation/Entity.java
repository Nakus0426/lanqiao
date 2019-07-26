package annoyation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义一个注解：Entity
 * <p>
 * 问题：
 * 1. 此注解可以标注在程序的哪些元素（类，属性，方法，参数，构造函数）
 *
 * @author 张建平 on 2019/3/30 16:23
 */
@Target({ElementType.TYPE}) //Entity注解可标到类上
@Retention(RetentionPolicy.RUNTIME)
public @interface Entity {

    String table() default "";
    // 如果指定了默认值那么此属性可有可无
    // String table(); // 表示此属性是必须的

    String id() default "id";
}
