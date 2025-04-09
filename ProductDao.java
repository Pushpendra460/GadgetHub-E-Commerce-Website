/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.dao;

import in.gadgethub.pojo.ProductPojo;
import java.util.List;

/**
 *
 * @author hp
 */
public interface ProductDao {
    public String addProduct(ProductPojo product);
    public String updateProduct(ProductPojo prevProduct, ProductPojo updatedProduct);
    public String UpdateProductPrice(String prodid, double updatePrice);
    public List<ProductPojo>getAllProducts();
    
    public List<ProductPojo>getAllProductsByType(String type);
    public List<ProductPojo>searchAllProducts(String search);
    
    public ProductPojo getProductDetails(String prodid);
    public int getProductQuantity(String prodid);
    
    public String updateProductWithoutImage(String prevProductid,ProductPojo updateProduct);
    public double getProductPrice(String prodid);
    public Boolean sellNProduct(String prodid,int n);
    public List<String>getAllProductsType();
    
    public byte[] getImage(String prodid);
    public String removeProducts(String prodid);
    
    
}
