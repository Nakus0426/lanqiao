package com.lanqiao.dao;

import org.junit.Test;

import java.util.LinkedList;

abstract class Something {

    @Test
    public static void main(String[] args) {
        LinkedList list = new LinkedList();
        list.add("a");
        list.add(2,"b");
        System.out.println(list.get(1));
    }
}

