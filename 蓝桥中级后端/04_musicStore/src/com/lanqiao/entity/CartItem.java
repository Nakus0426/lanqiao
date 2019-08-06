package com.lanqiao.entity;

/**
 * 购物项：购物车中的一项
 *
 */
public class CartItem {
    // 唱片实体
    private CdDisc disc;

    // 数量
    private Integer quantity;

    public CartItem(CdDisc disc, Integer quantity) {
        this.disc = disc;
        this.quantity = quantity;
    }

    public CdDisc getDisc() {
        return disc;
    }

    public void setDisc(CdDisc disc) {
        this.disc = disc;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}
