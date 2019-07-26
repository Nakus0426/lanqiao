package com.lanqiao.entity;

public class Score {
    private String cno;
    private int sno;
    private int score;

    public Score() {
    }

    public Score(String cno, int sno, int score) {
        this.cno = cno;
        this.sno = sno;
        this.score = score;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "cno=" + cno +
                ", sno=" + sno +
                ", score=" + score +
                '}';
    }
}
