package com.machine.bean;

import org.springframework.stereotype.Component;

/**
 * 物品实体类
 */

@Component(value = "product")
public class Product {
    //物品编号
    private Integer productId;
    //物品名字
    private String productName;
    //物品图片
    private String productPicture;
    //物品价格
    private Double productPrice;
    //物品是否可用（是否显示）
    private Integer productIsUsed;
    //物品最小重量
    private Double productWeight;

    public Product() {
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductIsUsed() {
        return productIsUsed;
    }

    public void setProductIsUsed(Integer productIsUsed) {
        this.productIsUsed = productIsUsed;
    }

    public Double getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(Double productWeight) {
        this.productWeight = productWeight;
    }
}
