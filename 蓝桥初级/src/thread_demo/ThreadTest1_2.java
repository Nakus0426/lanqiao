package thread_demo;

/**
 * 1.	编写一个线程类，创建三个该线程的实例对同一个共享的int型变量作同步的递增操作。
 * 并在控制台输出:0,1,2,3,4,5….。要求分别使用以下两种同步方式实现：
 * a)	使用synchronized同步块实现。对共享int型变量的同步访问。
 * b)	使用synchronized方法实现。对共享int型变量的同步访问。
 */
public class ThreadTest1_2 extends Thread {
    static int num = 0;
    String name;

    public ThreadTest1_2(String name) {
        setDaemon(true);
        this.name = name;
    }

    @Override
    public void run() {
        while (true) {
            try {
                add(name);
                sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }


    private static synchronized void add(String name) {
        System.out.println(name + ":" + num);
        num++;
    }

    public static void main(String[] args) {
        ThreadTest1_2 刘 = new ThreadTest1_2("刘");
        ThreadTest1_2 关 = new ThreadTest1_2("关");
        ThreadTest1_2 张 = new ThreadTest1_2("张");

        刘.start();
        关.start();
        张.start();

        try {
            sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
