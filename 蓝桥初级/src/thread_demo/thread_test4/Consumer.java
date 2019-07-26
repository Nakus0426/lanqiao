package thread_demo.thread_test4;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * 4.	编写一个售票程序，一共只有5张票（Ticket类:ticketNo,fromStation,toStation,price等属性），
 *      现在有10个人（线程）同时买票每卖出一张票总票数就要少一张票，如果无票可买进程序结束。
 * 要求：
 * a)	怎样保证一张票只能被一个人买到。不能一张票同时被多个人买到。
 * b)	5个Ticket实例加入到一个ArrayList中，10个线程都从ArrayList中取票。
 */
public class Consumer extends Thread {
    ArrayList tickets;
    private int count;

    public Consumer(String name, ArrayList tickets) {
        super(name);
        this.tickets = tickets;
    }

    @Override
    public void run() {
        synchronized (tickets) {
            try {
                if (tickets.isEmpty()) {
                    System.out.println("票已售完！");
                    tickets.wait(20);
                } else {
                    tickets.remove(0);
                    this.count++;
                    System.out.println(getName() + "买了" + this.count + "张票,还剩：" + tickets.size() + "张");
                    Iterator ticket = tickets.iterator();
                    for (tickets.iterator(); ticket.hasNext(); ) {
                        System.out.println(ticket.next());

                    }
                    tickets.notifyAll();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            try {
                sleep(20);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
