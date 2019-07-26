package reflection_demo;

public class ReflectionDemo {
    public static void main(String[] args) {

        try {
            // Class cls = Class.forName("全类名");
            // 此时会在jvm内创建一个java.lang.Class实例来表示正在运行的Employee类
            // cls表示的就是Employee类
            Class cls = Students.class;

            // 通过cls实例来创建出一个对象（Employee对象）
            // newInstance()方法里通过调用默认构造函数来创建对象的
            Object emp = cls.newInstance();

            // 测试emp是否是Employee类的实例
            if(emp instanceof Students){
                System.out.println("emp是Students类的实例");
            }
            System.out.println(emp);


            // 通过cls实例可以获Employee类所有的细节（属性、构造器、方法等）


        } catch (InstantiationException /*实例化异常*/ | IllegalAccessException /*非法访问异常，即无访问权限*/
                /*| IllegalStateException*/ e) {
            e.printStackTrace();
        }
    }
}
