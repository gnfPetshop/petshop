package com.kgc.exam.entity;

public class Goods {
    private Integer id;
    private String goodsname;
    private Integer kind;
    private Double price;
    private Double sales;
    private Integer stock;
    private Integer state;
    private String goodspicture1;
    private String goodspicture2;
    private String goodsdetail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public Integer getKind() {
        return kind;
    }

    public void setKind(Integer kind) {
        this.kind = kind;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getSales() {
        return sales;
    }

    public void setSales(Double sales) {
        this.sales = sales;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getGoodspicture1() {
        return goodspicture1;
    }

    public void setGoodspicture1(String goodspicture1) {
        this.goodspicture1 = goodspicture1;
    }

    public String getGoodspicture2() {
        return goodspicture2;
    }

    public void setGoodspicture2(String goodspicture2) {
        this.goodspicture2 = goodspicture2;
    }

    public String getGoodsdetail() {
        return goodsdetail;
    }

    public void setGoodsdetail(String goodsdetail) {
        this.goodsdetail = goodsdetail;
    }
}
