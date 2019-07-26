package thread_demo.thread_test4;

import java.util.ArrayList;

public class Test {
    public static void main(String[] args) {
        ArrayList tickets = new ArrayList();
        tickets.add(new Ticket("1","桂林","北京","1"));
        tickets.add(new Ticket("2","桂林","上海","1"));
        tickets.add(new Ticket("3","桂林","广州","1"));
        tickets.add(new Ticket("4","桂林","海南","1"));
        tickets.add(new Ticket("5","桂林","深圳","1"));

        new Consumer("刘",tickets).start();
        new Consumer("关",tickets).start();
        new Consumer("张",tickets).start();
        new Consumer("李",tickets).start();
        new Consumer("王",tickets).start();
        new Consumer("胡",tickets).start();
        new Consumer("梁",tickets).start();
        new Consumer("林",tickets).start();
        new Consumer("周",tickets).start();
        new Consumer("彭",tickets).start();
    }
}
