package com.lanqiao.guimei.vo;

/**
 * @Author 天份
 * @Date 2019/8/16 0016 10:47
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class YearNumb {
    private String years;
    private Integer numb;

    public YearNumb() {
    }

    public YearNumb(String years, Integer numb) {
        this.years = years;
        this.numb = numb;
    }

    public String getYears() {
        return years;
    }

    public void setYears(String years) {
        this.years = years;
    }

    public Integer getNumb() {
        return numb;
    }

    public void setNumb(Integer numb) {
        this.numb = numb;
    }

    @Override
    public String toString() {
        return "YearNumb{" +
                "years='" + years + '\'' +
                ", numb=" + numb +
                '}';
    }
}
