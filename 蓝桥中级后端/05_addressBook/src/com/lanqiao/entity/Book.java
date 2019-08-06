package com.lanqiao.entity;

/**
 * @author zhang naku
 */
public class Book {
    private String id;
    private String name;
    private String sex;
    private String phone;
    private String address;
    private String mobilephone;
    private String company;
    private String comphone;
    private String comaddress;
    private Integer relation;
    private String userid;

    public Book() {
    }

    public Book(String id, String name, String sex, String phone, String address, String mobilephone, String company, String comphone, String comaddress, Integer relation, String userid) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.phone = phone;
        this.address = address;
        this.mobilephone = mobilephone;
        this.company = company;
        this.comphone = comphone;
        this.comaddress = comaddress;
        this.relation = relation;
        this.userid = userid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobilephone() {
        return mobilephone;
    }

    public void setMobilephone(String mobilephone) {
        this.mobilephone = mobilephone;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getComphone() {
        return comphone;
    }

    public void setComphone(String comphone) {
        this.comphone = comphone;
    }

    public String getComaddress() {
        return comaddress;
    }

    public void setComaddress(String comaddress) {
        this.comaddress = comaddress;
    }

    public Integer getRelation() {
        return relation;
    }

    public void setRelation(Integer relation) {
        this.relation = relation;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", mobilephone='" + mobilephone + '\'' +
                ", company='" + company + '\'' +
                ", comphone='" + comphone + '\'' +
                ", comaddress='" + comaddress + '\'' +
                ", relation=" + relation +
                ", userid='" + userid + '\'' +
                '}';
    }
}
