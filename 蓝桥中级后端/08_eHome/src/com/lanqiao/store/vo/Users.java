package com.lanqiao.store.vo;

public class Users {

    private Integer userId;
    private String userName;
    private String password;
    private String realName;
    private String sex;

    public Users() {
    }

    public Users(Integer userId, String userName, String password, String realName, String sex) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.realName = realName;
        this.sex = sex;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", realName='" + realName + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }
}
