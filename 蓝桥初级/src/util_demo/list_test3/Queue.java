package util_demo.list_test3;

import java.util.LinkedList;

public class Queue {
    LinkedList List = new LinkedList();
    public void inQueue(Object object){
        List.addLast(object);
    }

    public Object outQueue(){
        List.removeFirst();
        return List.getFirst();
    }

    public Object peek(){
        return List.getFirst();
    }

    public static void main(String[] args) {
        Student a = new Student("a", "a");
        Student b = new Student("b", "b");
        Student c = new Student("c", "c");

        Queue myqueue = new Queue();

        myqueue.inQueue(a);
        myqueue.inQueue(b);
        myqueue.inQueue(c);
        System.out.println(myqueue.peek());

        myqueue.outQueue();
        System.out.println(myqueue.peek());

    }
}
