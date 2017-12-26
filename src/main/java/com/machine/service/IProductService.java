package com.machine.service;

import com.machine.bean.Product;

import java.util.List;

public interface IProductService {

    List<Product> productList();

    int addProduct(Product product);

    int deleteProduct(Integer productId);

    int deleteAllProducts(Product product);

}
