/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.pojo;

import java.io.InputStream;

/**
 *
 * @author hp
 */
public class ProductPojo {
    private String prodId;
    private String prodName;
    private String prodType;
    private double prodPrice;
    private int prodQuantity;
    private InputStream prodImage;
    private String ProdInfo;

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getProdType() {
        return prodType;
    }

    public void setProdType(String prodType) {
        this.prodType = prodType;
    }

    public double getProdPrice() {
        return prodPrice;
    }

    public void setProdPrice(double prodPrice) {
        this.prodPrice = prodPrice;
    }

    public int getProdQuantity() {
        return prodQuantity;
    }

    public void setProdQuantity(int prodQuantity) {
        this.prodQuantity = prodQuantity;
    }

    public InputStream getProdImage() {
        return prodImage;
    }

    public void setProdImage(InputStream prodImage) {
        this.prodImage = prodImage;
    }

    public String getProdInfo() {
        return ProdInfo;
    }

    public void setProdInfo(String ProdInfo) {
        this.ProdInfo = ProdInfo;
    }

    public ProductPojo(String prodId, String prodName, String prodType, double prodPrice, int prodQuantity, InputStream prodImage, String ProdInfo) {
        this.prodId = prodId;
        this.prodName = prodName;
        this.prodType = prodType;
        this.prodPrice = prodPrice;
        this.prodQuantity = prodQuantity;
        this.prodImage = prodImage;
        this.ProdInfo = ProdInfo;
    }

    public ProductPojo() {
    }



    
    
}
