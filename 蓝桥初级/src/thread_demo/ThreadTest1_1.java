package thread_demo;

/**
 * 1.	编写一个线程类，创建三个该线程的实例对同一个共享的int型变量作同步的递增操作。
 * 并在控制台输出:0,1,2,3,4,5….。要求分别使用以下两种同步方式实现：
 * a)	使用synchronized同步块实现。对共享int型变量的同步访问。
 * b)	使用synchronized方法实现。对共享int型变量的同步访问。
 */
public class ThreadTest1_1 extends Thread {
    static int num = 0;
    private Object lock;

    public ThreadTest1_1(String name, Object lock) {
        setDaemon(true);
        setName(name);
        this.lock = lock;
    }


    @Override
    public void run() {
        while (true) {
            try {
                synchronized (lock) {
                    System.out.println(getName() + ":" + num);
                    num++;
                }
                sleep(100);

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        Object lock = new Object();
        ThreadTest1_1 刘 = new ThreadTest1_1("刘", lock);
        ThreadTest1_1 关 = new ThreadTest1_1("关", lock);
        ThreadTest1_1 张 = new ThreadTest1_1("张", lock);

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
