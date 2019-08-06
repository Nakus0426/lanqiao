package com.lanqiao.dao;

import com.lanqiao.entity.Book;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class bookDaoTest {
    bookDao bookDao;
    @Before
    public void setUp() throws Exception {
        this.bookDao=new bookDao();
    }

    @Test
    public void selectAllContact() {
        List<Book> books = this.bookDao.selectAllContact("jack");
        System.out.println(books);
    }

    @Test
    public void seletByRelation() {
        List<Book> books = this.bookDao.seletByRelation("jack", 1);
        System.out.println(books);
    }

    @Test
    public void addContact() {
        Book book = new Book(null, "1", "男", "1", "1", "1", "1", "1", "1", 1, "1");
        boolean b = this.bookDao.addContact(book);
        System.out.println(b);
    }
}