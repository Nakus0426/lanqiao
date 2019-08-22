package com.lanqiao.guimei.vo;

import java.sql.Date;

public class Stock {
    private Integer stkId;
    private  String stkName;
    private  Integer quantity;
    private Date inStkDate;
    private Date outStkDate;

    public Stock() {
    }

    public Stock(Integer stkId, String stkName, Integer quantity, Date inStkDate, Date outStkDate) {
        this.stkId = stkId;
        this.stkName = stkName;
        this.quantity = quantity;
        this.inStkDate = inStkDate;
        this.outStkDate = outStkDate;
    }

    public Integer getStkId() {
        return stkId;
    }

    public void setStkId(Integer stkId) {
        this.stkId = stkId;
    }

    public String getStkName() {
        return stkName;
    }

    public void setStkName(String stkName) {
        this.stkName = stkName;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getInStkDate() {
        return inStkDate;
    }

    public void setInStkDate(Date inStkDate) {
        this.inStkDate = inStkDate;
    }

    public Date getOutStkDate() {
        return outStkDate;
    }

    public void setOutStkDate(Date outStkDate) {
        this.outStkDate = outStkDate;
    }

    @Override
    public String toString() {
        return "Stock{" +
                "stkId=" + stkId +
                ", stkName='" + stkName + '\'' +
                ", quantity=" + quantity +
                ", inStkDate=" + inStkDate +
                ", outStkDate=" + outStkDate +
                '}';
    }
}
