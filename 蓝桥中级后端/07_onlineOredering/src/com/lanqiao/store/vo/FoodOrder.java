package com.lanqiao.store.vo;

public class FoodOrder {
    private Integer orderId;
    private String customerName;
    private String address;
    private String zipCode;
    private String telephone;
    private String mobile;
    private String notice;
    private String totalPrice;

    public FoodOrder() {
    }

    public FoodOrder(Integer orderId, String customerName, String address, String zipCode, String telephone, String mobile, String notice, String totalPrice) {
        this.orderId = orderId;
        this.customerName = customerName;
        this.address = address;
        this.zipCode = zipCode;
        this.telephone = telephone;
        this.mobile = mobile;
        this.notice = notice;
        this.totalPrice = totalPrice;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "FoodOrder{" +
                "orderId=" + orderId +
                ", customerName='" + customerName + '\'' +
                ", address='" + address + '\'' +
                ", zipCode='" + zipCode + '\'' +
                ", telephone='" + telephone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", notice='" + notice + '\'' +
                ", totalPrice='" + totalPrice + '\'' +
                '}';
    }
}
