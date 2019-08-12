package com.lanqiao.store.vo;

public class Types {
    private Integer typeId;
    private String type;

    public Types() {
    }

    public Types(Integer typeId, String type) {
        this.typeId = typeId;
        this.type = type;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Types{" +
                "typeId=" + typeId +
                ", type='" + type + '\'' +
                '}';
    }
}
