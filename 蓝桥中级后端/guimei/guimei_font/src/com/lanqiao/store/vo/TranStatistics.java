package com.lanqiao.store.vo;

import java.sql.Timestamp;

/**
 * @Author 天份
 * @Date 2019/8/15 0015 11:23
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class TranStatistics {

    /*
    *   tran_time timestamp,
        tran_numb number,
        ctgr_name 	varchar2(20),
	    big_ctgr 	varchar2(20)
    *
    * */

    private Timestamp tranTime;
    private Integer tranNumb;
    private String ctgrName;
    private String bigCtgr;

    public TranStatistics() {
    }

    public TranStatistics(Timestamp tranTime, Integer tranNumb, String ctgrName, String bigCtgr) {
        this.tranTime = tranTime;
        this.tranNumb = tranNumb;
        this.ctgrName = ctgrName;
        this.bigCtgr = bigCtgr;
    }

    public Timestamp getTranTime() {
        return tranTime;
    }

    public void setTranTime(Timestamp tranTime) {
        this.tranTime = tranTime;
    }

    public Integer getTranNumb() {
        return tranNumb;
    }

    public void setTranNumb(Integer tranNumb) {
        this.tranNumb = tranNumb;
    }

    public String getCtgrName() {
        return ctgrName;
    }

    public void setCtgrName(String ctgrName) {
        this.ctgrName = ctgrName;
    }

    public String getBigCtgr() {
        return bigCtgr;
    }

    public void setBigCtgr(String bigCtgr) {
        this.bigCtgr = bigCtgr;
    }

    @Override
    public String toString() {
        return "TranStatistics{" +
                "tranTime=" + tranTime +
                ", tranNumb=" + tranNumb +
                ", ctgrName='" + ctgrName + '\'' +
                ", bigCtgr='" + bigCtgr + '\'' +
                '}';
    }
}
