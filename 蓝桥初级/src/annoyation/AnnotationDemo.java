package annoyation;

import java.util.Date;

/**
 * 文档注释
 *
 * @author 张建平 on 2019/3/30 16:10
 */

public class AnnotationDemo {

    // 已过时，不建议使用
    @Deprecated // 注解
    public void test_1() {

    }

    // 方法重写
    @Override
    @SuppressWarnings({"unused", "unchecked"})
    public String toString() {
        String ss = "AnnotationDemo";
        return "AnnotationDemo{}";
    }


    public static void main(String[] args) {
        new AnnotationDemo().test_1();
        Date date = new Date(2011, 10, 22);

    }
}
