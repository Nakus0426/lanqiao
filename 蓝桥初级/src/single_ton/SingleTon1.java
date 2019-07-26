package single_ton;


/**
 * 饿汉式：1）默认构造私有
 *        2）定义一个私有的静态变量类开为当前类
 *        3）提供一个公有的static get方法获取此static属性
 *        4）是否 Lazy 初始化：否
 *        5）是否多线程安全：是
 */
public class SingleTon1 {

    private static SingleTon1 instance = new SingleTon1();

    private SingleTon1(){
        System.out.println("饿汉式单例模式");
    }

    public static SingleTon1 getInstance() {
        return instance;
    }
}
