package com.lanqiao.entity;
public class CdDisc {
    private String discNo;
    private String title;
    private String description;
    private String img;
    private Double price;

    public CdDisc() {
    }

    public CdDisc(String discNo, String title, String description, String img, Double price) {
        this.discNo = discNo;
        this.title = title;
        this.description = description;
        this.img = img;
        this.price = price;
    }

    public String getDiscNo() {
        return discNo;
    }

    public void setDiscNo(String discNo) {
        this.discNo = discNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "CdDisc{" +
                "discNo='" + discNo + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                '}';
    }
}
