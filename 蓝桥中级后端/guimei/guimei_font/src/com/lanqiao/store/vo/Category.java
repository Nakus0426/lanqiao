package com.lanqiao.store.vo;

public class Category {
    private Integer ctgrId;     //number not null primary key,    --小分类ID, 主键（序列名：cate_seq ）
    private String ctgrName;   //varchar2(20) not null unique, --小分类名称
    private String bigCtgr;    //varchar2(20)
    private Integer bigCtgrId;

    public Category() {
    }

    public Category(Integer ctgrId, String ctgrName, String bigCtgr, Integer bigCtgrId) {
        this.ctgrId = ctgrId;
        this.ctgrName = ctgrName;
        this.bigCtgr = bigCtgr;
        this.bigCtgrId = bigCtgrId;
    }

    public Integer getCtgrId() {
        return ctgrId;
    }

    public void setCtgrId(Integer ctgrId) {
        this.ctgrId = ctgrId;
    }

    public String getCtgrName() {
        return ctgrName;
    }

    public void setCtgrName(String ctgrName) {
        this.ctgrName = ctgrName;
    }

    public String getBigCtgr() {
        return bigCtgr;
    }

    public void setBigCtgr(String bigCtgr) {
        this.bigCtgr = bigCtgr;
    }

    public Integer getBigCtgrId() {
        return bigCtgrId;
    }

    public void setBigCtgrId(Integer bigCtgrId) {
        this.bigCtgrId = bigCtgrId;
    }

    @Override
    public String toString() {
        return "Category {" +
                " bigCtgrId ='" + bigCtgrId +
                ", bigCtgr=" + bigCtgr +
                ", ctgrId='" + ctgrId +
                ", ctgrName='" + ctgrName +
                '}';
    }
}
