package com.lanqiao.entity;

public class Teacher {
    private int tno;
    private String tname;
    private int tpassword;
    private String job;

    public Teacher() {
    }

    public Teacher(int tno, String tname, int tpassword, String job) {
        this.tno = tno;
        this.tname = tname;
        this.tpassword = tpassword;
        this.job = job;
    }

    public int getTno() {
        return tno;
    }

    public void setTno(int tno) {
        this.tno = tno;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public int getTpassword() {
        return tpassword;
    }

    public void setTpassword(int tpassword) {
        this.tpassword = tpassword;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tno=" + tno +
                ", tname='" + tname + '\'' +
                ", tpassword=" + tpassword +
                ", job='" + job + '\'' +
                '}';
    }
}
