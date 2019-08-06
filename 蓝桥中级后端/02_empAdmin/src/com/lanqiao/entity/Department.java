package com.lanqiao.entity;

/**
 * @author 张建平 on 2019/4/24 21:01
 */
public class Department {

    private Integer deptno;
    private String dname;
    private String loc;

    public Department() {
    }

    public Department(Integer deptno, String dname, String loc) {
        this.deptno = deptno;
        this.dname = dname;
        this.loc = loc;
    }

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getLocc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    @Override
    public String toString() {
        return "Department{" +
                "deptno=" + deptno +
                ", dname='" + dname + '\'' +
                ", lo='" + loc + '\'' +
                '}';
    }
}
