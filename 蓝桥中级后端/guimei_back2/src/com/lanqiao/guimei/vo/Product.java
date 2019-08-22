package com.lanqiao.guimei.vo;

public class Product {
 private String prodNo;
 private Integer ctgrId;
 private Integer venId;
 private Integer stkId;
 private String prodName;
 private double price;
 private String type;
 private String descr;
 private String image;
 private Integer status;
 private String color;

    public Product() {
    }

    public Product(Integer ctgrId, Integer venId, Integer stkId, String prodName, double price, String type, String descr, String image, Integer status, String color) {
        this.ctgrId = ctgrId;
        this.venId = venId;
        this.stkId = stkId;
        this.prodName = prodName;
        this.price = price;
        this.type = type;
        this.descr = descr;
        this.image = image;
        this.status = status;
        this.color = color;
    }

    public Product(String prodNo, Integer ctgrId, Integer venId, Integer stkId, String prodName, double price, String type, String descr, String image, Integer status, String color) {
        this.prodNo = prodNo;
        this.ctgrId = ctgrId;
        this.venId = venId;
        this.stkId = stkId;
        this.prodName = prodName;
        this.price = price;
        this.type = type;
        this.descr = descr;
        this.image = image;
        this.status = status;
        this.color = color;
    }

    public Product(String prodNo, Integer ctgrId, Integer venId, Integer stkId, String prodName, double price, String type, String descr, String image, String color) {
        this.prodNo = prodNo;
        this.ctgrId = ctgrId;
        this.venId = venId;
        this.stkId = stkId;
        this.prodName = prodName;
        this.price = price;
        this.type = type;
        this.descr = descr;
        this.image = image;
        this.color = color;
    }


    public Product(String prodNo, Integer ctgrId, Integer venId, Integer stkId, String prodName, String type, String descr, String image, String color) {
        this.prodNo = prodNo;
        this.ctgrId = ctgrId;
        this.venId = venId;
        this.stkId = stkId;
        this.prodName = prodName;
        this.type = type;
        this.descr = descr;
        this.image = image;
        this.color = color;
    }


    public Product(Integer ctgrId, Integer venId, Integer stkId, String prodName, double price, String type, String descr, String image, String color) {
        this.ctgrId = ctgrId;
        this.venId = venId;
        this.stkId = stkId;
        this.prodName = prodName;
        this.price = price;
        this.type = type;
        this.descr = descr;
        this.image = image;
        this.color = color;
    }

    public String getProdNo() {
        return prodNo;
    }

    public void setProdNo(String prodNo) {
        this.prodNo = prodNo;
    }

    public Integer getCtgrId() {
        return ctgrId;
    }

    public void setCtgrId(Integer ctgrId) {
        this.ctgrId = ctgrId;
    }

    public Integer getVenId() {
        return venId;
    }

    public void setVenId(Integer venId) {
        this.venId = venId;
    }

    public Integer getStkId() {
        return stkId;
    }

    public void setStkId(Integer stkId) {
        this.stkId = stkId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Product{" +
                "prodNo='" + prodNo + '\'' +
                ", ctgrId=" + ctgrId +
                ", venId=" + venId +
                ", stkId=" + stkId +
                ", prodName='" + prodName + '\'' +
                ", price=" + price +
                ", type='" + type + '\'' +
                ", descr='" + descr + '\'' +
                ", image='" + image + '\'' +
                ", status=" + status +
                ", color='" + color + '\'' +
                '}';
    }
}
