package com.lanqiao.store.vo;

import java.sql.Date;

/**
 * @Author 天份
 * @Date 2019/8/17 0017 10:12
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class GuimeiUsers {

    /*
    * create table guimei_users(
	user_id number not null primary key, --主键,（序列名：user_seq ）
	login_name 	varchar2(20) not null unique, --登录名
	password	varchar2(10),
	first_name	varchar2(20),			--姓氏
	last_name	varchar2(20),			--名字
	email		varchar2(50),
	gender		varchar2(2),
	header		varchar2(50),			--头像，去找一个jquery下拉列表图标插件，做成文件上传
	hobby		varchar2(50),			--爱好
	birthday	date					--出生日期，一个输入框用日历控件选
);


create sequence user_seq start with 1 increment by 1 maxvalue 1000;


insert into guimei_users values(user_seq.nextval,'Test1','test1','张','三','15230152@qq.com','男','tx1.jpg','唱歌','12-5月-2019');
    *
    * */

    private Integer userId;
    private String loginName;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private String gender;
    private String header;
    private String hobby;
    private Date birthday;

    public GuimeiUsers() {
    }

    public GuimeiUsers(String loginName, String password) {
        this.loginName = loginName;
        this.password = password;
    }

    public GuimeiUsers(Integer userId, String loginName, String password, String firstName, String lastName, String email, String gender, String header, String hobby, Date birthday) {
        this.userId = userId;
        this.loginName = loginName;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.header = header;
        this.hobby = hobby;
        this.birthday = birthday;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "GuimeiUsers{" +
                "userId=" + userId +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", header='" + header + '\'' +
                ", hobby='" + hobby + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}


