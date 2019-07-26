package util_demo.list_test3;

import java.util.LinkedList;

public class MyStack {
   public LinkedList ls = new LinkedList();

    public void push(Object object){
        ls.addFirst(object);
    }

    public Object pop(){
        Object obj = ls.getFirst();
        ls.removeFirst();
        return obj;
    }

    public Object peek(){
        return ls.getFirst();
    }

    public static void main(String[] args) {
        Student a = new Student("a", "a");
        Student b = new Student("b", "b");
        Student c = new Student("c", "c");

        MyStack myStack = new MyStack();

        myStack.push(a);
        myStack.push(b);
        myStack.push(c);
        System.out.println(myStack.peek());

        myStack.pop();
        System.out.println(myStack.peek());

    }
}
