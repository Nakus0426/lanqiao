package com.lanqiao.entity;

import java.util.Date;

public class Course {
    private String cno;
    private String cname;
    private int credit;
    private Date fromDate;
    private Date endDay;
    private int tno;

    public Course() {
    }

    public Course(String cno, String cname, int credit, Date fromDate, Date endDay, int tno) {
        this.cno = cno;
        this.cname = cname;
        this.credit = credit;
        this.fromDate = fromDate;
        this.endDay = endDay;
        this.tno = tno;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public Date getFromDate() {
        return fromDate;
    }

    public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }

    public Date getEndDay() {
        return endDay;
    }

    public void setEndDay(Date endDay) {
        this.endDay = endDay;
    }

    public int getTno() {
        return tno;
    }

    public void setTno(int tno) {
        this.tno = tno;
    }

    @Override
    public String toString() {
        return "Course{" +
                "cno='" + cno + '\'' +
                ", cname='" + cname + '\'' +
                ", credit=" + credit +
                ", fromDate=" + fromDate +
                ", endDay=" + endDay +
                ", tno=" + tno +
                '}';
    }
}