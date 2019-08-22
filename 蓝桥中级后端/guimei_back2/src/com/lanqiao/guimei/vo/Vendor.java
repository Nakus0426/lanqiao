package com.lanqiao.guimei.vo;

public class Vendor {
    private Integer venId;
    private String venName;
    private String venAddr;

    public Vendor() {
    }

    public Vendor(Integer venId, String venName, String venAddr) {
        this.venId = venId;
        this.venName = venName;
        this.venAddr = venAddr;
    }

    public Integer getVenId() {
        return venId;
    }

    public void setVenId(Integer venId) {
        this.venId = venId;
    }

    public String getVenName() {
        return venName;
    }

    public void setVenName(String venName) {
        this.venName = venName;
    }

    public String getVenAddr() {
        return venAddr;
    }

    public void setVenAddr(String venAddr) {
        this.venAddr = venAddr;
    }

    @Override
    public String toString() {
        return "Vendor{" +
                "venId=" + venId +
                ", venName='" + venName + '\'' +
                ", venAddr='" + venAddr + '\'' +
                '}';
    }
}
