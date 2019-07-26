package com.javaweb.entity;

public class Book {
    private int bno;
    private String bname;
    private String author;
    private int price;
    private String remark;

    public Book() {
    }

    public Book(int bno, String bname, String author, int price, String remark) {
        this.bno = bno;
        this.bname = bname;
        this.author = author;
        this.price = price;
        this.remark = remark;
    }

    public int getBno() {
        return bno;
    }

    public void setBno(int bno) {
        this.bno = bno;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
