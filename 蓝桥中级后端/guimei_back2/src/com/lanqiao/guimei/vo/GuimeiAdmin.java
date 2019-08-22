package com.lanqiao.guimei.vo;

/**
 * @author Marcy -- 马庆晓
 * created on 2019/8/14 16:39
 */
public class GuimeiAdmin {
    private Integer userid;
    private String loginname;
    private String password;

    public GuimeiAdmin(Integer userid, String loginname, String password) {
        this.userid = userid;
        this.loginname = loginname;
        this.password = password;
    }

    public GuimeiAdmin() {
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "GuimeiAdmin{" +
                "userid=" + userid +
                ", loginname='" + loginname + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
