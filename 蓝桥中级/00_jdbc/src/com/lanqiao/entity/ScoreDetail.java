package com.lanqiao.entity;

public class ScoreDetail {
    private String sname;
    private String cname;
    private int score;
    private int credit;
    private String tname;

    public ScoreDetail() {
    }

    public ScoreDetail(String sname, String cname, int score, int credit, String tname) {
        this.sname = sname;
        this.cname = cname;
        this.score = score;
        this.credit = credit;
        this.tname = tname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    @Override
    public String toString() {
        return "ScoreDetail{" +
                "sname='" + sname + '\'' +
                ", cname='" + cname + '\'' +
                ", score=" + score +
                ", credit=" + credit +
                ", tname='" + tname + '\'' +
                '}';
    }
}
