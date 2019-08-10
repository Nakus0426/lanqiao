package com.lanqiao.store.vo;

public class Users {

    private Integer userId;
    private String loginName;
    private String loginpass;

    public Users() {
    }

    public Users(Integer userId, String loginName, String loginpass) {
        this.userId = userId;
        this.loginName = loginName;
        this.loginpass = loginpass;
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

    public String getLoginpass() {
        return loginpass;
    }

    public void setLoginpass(String loginwpass) {
        this.loginpass = loginwpass;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", loginName='" + loginName + '\'' +
                ", loginpass='" + loginpass + '\'' +
                '}';
    }
}
