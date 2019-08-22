package com.lanqiao.guimei.vo;

import java.sql.Timestamp;
import java.util.Date;

public class Trades {

    /*    trd_no 			varchar2(18) not null primary key, 		--交易编号, yyyyMMddhhmmss+oracle4位随机数
        buyer			number references guimei_users (user_id),	--买家
        total_money 	number(8,2), 							--交易总金额=product.price*quantity
        trd_time  		timestamp default systimestamp, 		--交易时间，系统默认
        trd_loc			varchar2(100),							--收件地址
        receiver        varchar2(20),                            --收件人
        phone           varchar2(15)                        --联系电话*/
    private String trdNo;
    private Integer buyer;
    private Double tptalMoney;
    private Timestamp trdTime;
    private String trdLoc;
    private String receiver;
    private String phone;
    private Integer  trdStatus;
    //2.
    private String prodNo;
    private Integer saler;
    private Integer quantity;
    private Double diacountPrice;
    //3.供应商表prodNo saler quantity  diacountPrice venName imageName descr ctgrName
    private String venName;
    //4.商品信息
    private String imageName;
    private String descr;
    //5.产品信息产品名字
    private String ctgrName;

    public Trades() {
    }


    public Trades(String trdNo, Double tptalMoney, String trdLoc, String receiver, String phone) {
        this.trdNo = trdNo;
        this.tptalMoney = tptalMoney;
        this.trdLoc = trdLoc;
        this.receiver = receiver;
        this.phone = phone;
    }

    public Trades(String trdNo, Integer buyer, Double tptalMoney, Timestamp trdTime, String trdLoc, String receiver, String phone, Integer trdStatus, String prodNo, Integer saler, Integer quantity, Double diacountPrice, String venName, String imageName, String descr, String ctgrName) {
        this.trdNo = trdNo;
        this.buyer = buyer;
        this.tptalMoney = tptalMoney;
        this.trdTime = trdTime;
        this.trdLoc = trdLoc;
        this.receiver = receiver;
        this.phone = phone;
        this.trdStatus = trdStatus;
        this.prodNo = prodNo;
        this.saler = saler;
        this.quantity = quantity;
        this.diacountPrice = diacountPrice;
        this.venName = venName;
        this.imageName = imageName;
        this.descr = descr;
        this.ctgrName = ctgrName;
    }

    public Trades(Double tptalMoney, String trdLoc, String receiver, String phone,String trdNo) {
        this.tptalMoney = tptalMoney;
        this.trdLoc = trdLoc;
        this.receiver = receiver;
        this.phone = phone;
        this.trdNo = trdNo;
    }

    public String getTrdNo() {
        return trdNo;
    }

    public void setTrdNo(String trdNo) {
        this.trdNo = trdNo;
    }

    public Integer getBuyer() {
        return buyer;
    }

    public void setBuyer(Integer buyer) {
        this.buyer = buyer;
    }

    public Double getTptalMoney() {
        return tptalMoney;
    }

    public void setTptalMoney(Double tptalMoney) {
        this.tptalMoney = tptalMoney;
    }

    public Timestamp getTrdTime() {
        return trdTime;
    }

    public void setTrdTime(Timestamp trdTime) {
        this.trdTime = trdTime;
    }

    public String getTrdLoc() {
        return trdLoc;
    }

    public void setTrdLoc(String trdLoc) {
        this.trdLoc = trdLoc;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getTrdStatus() {
        return trdStatus;
    }

    public void setTrdStatus(Integer trdStatus) {
        this.trdStatus = trdStatus;
    }

    public String getProdNo() {
        return prodNo;
    }

    public void setProdNo(String prodNo) {
        this.prodNo = prodNo;
    }

    public Integer getSaler() {
        return saler;
    }

    public void setSaler(Integer saler) {
        this.saler = saler;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getDiacountPrice() {
        return diacountPrice;
    }

    public void setDiacountPrice(Double diacountPrice) {
        this.diacountPrice = diacountPrice;
    }

    public String getVenName() {
        return venName;
    }

    public void setVenName(String venName) {
        this.venName = venName;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getCtgrName() {
        return ctgrName;
    }

    public void setCtgrName(String ctgrName) {
        this.ctgrName = ctgrName;
    }

    @Override
    public String toString() {
        return "Trade{" +
                "trdNo='" + trdNo + '\'' +
                ", buyer=" + buyer +
                ", tptalMoney=" + tptalMoney +
                ", trdTime=" + trdTime +
                ", trdLoc='" + trdLoc + '\'' +
                ", receiver='" + receiver + '\'' +
                ", phone='" + phone + '\'' +
                ", trdStatus=" + trdStatus +
                ", prodNo='" + prodNo + '\'' +
                ", saler=" + saler +
                ", quantity=" + quantity +
                ", diacountPrice=" + diacountPrice +
                ", venName='" + venName + '\'' +
                ", imageName='" + imageName + '\'' +
                ", descr='" + descr + '\'' +
                ", ctgrName='" + ctgrName + '\'' +
                '}';
    }
}
