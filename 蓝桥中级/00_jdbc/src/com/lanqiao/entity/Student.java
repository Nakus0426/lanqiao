package com.lanqiao.entity;

public class Student {
    private int sno;
    private String sname;
    private String sex;
    private String academy;
    private String grade;
    private int phone;

    public Student() {
    }

    public Student(int sno, String sname, String sex, String academy, String grade, int phone) {
        this.sno = sno;
        this.sname = sname;
        this.sex = sex;
        this.academy = academy;
        this.grade = grade;
        this.phone = phone;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAcademy() {
        return academy;
    }

    public void setAcademy(String academy) {
        this.academy = academy;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sno=" + sno +
                ", sname='" + sname + '\'' +
                ", sex='" + sex + '\'' +
                ", academy='" + academy + '\'' +
                ", grade='" + grade + '\'' +
                ", phone=" + phone +
                '}';
    }
}
