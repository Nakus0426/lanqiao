package com.lanqiao.store.vo;

public class Product {
    private String prodNo; 	    //varchar(40) not null primary key,  --产品编号（唯一键），uuid生成,sys_guid()函数生成
    private Integer ctgrId;         //number references category(ctgr_id),    --外键，商品分类
    private Integer venId;          //number references vendor(ven_id),     --外键，供应商
    private Integer stkId;          //number references stock(stk_id),      --外键，库存
    private String prodName; 	    //varchar2(20) not null,
    private Double price; 		    //number(8,2) not null, 		--原价格
    private String type; 		    //varchar(25), 				--型号
    private String descr;           //varchar2(500),					--描述
    private String image;           //varchar2(50)
    private Integer status;         //number                    --状态(是否在售)
    private String color;           //varchar2(20)              --颜色
    private String venName;
    private String venAddr;

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

    public Product() {
    }

    public Product(String prodNo, Integer ctgrId, Integer venId, Integer stkId, String prodName, Double price, String type, String descr, String image, Integer status, String color) {
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
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
                ", venName='" + venName + '\'' +
                ", venAddr='" + venAddr + '\'' +
                '}';
    }
}
