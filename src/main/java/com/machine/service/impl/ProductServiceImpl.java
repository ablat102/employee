package com.machine.service.impl;

import com.machine.bean.Product;
import com.machine.dao.IProductDao;
import com.machine.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    private IProductDao productDao;

    @Override
    public List<Product> productList() {
        List<Product> products = productDao.queryAllProducts();
        if (products != null) {
            return products;
        }
        return null;
    }

    /**
     * 添加物品
     *
     * @param product
     * @return 0 1 没有该物品，可以添加，添加成功， 2添加失败。 3已经有该物品，不能在添加
     */
    @Override
    public int addProduct(Product product) {
        //如果传递的对象不为空
        if (product != null) {
            //获取传递的过来的对象的属性
            String productName = product.getProductName();
            int row = productDao.addProduct(product);
            if (row <= 0) {
                return 2;
            }
            return 1;
        }
        return 0;
    }

    @Override
    public int deleteProduct(Integer productId) {
        if (productId != null) {
            int row = productDao.deleteProductsByProductId(productId);
            if (row > 0) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    @Override
    public int deleteAllProducts(Product product) {
        return 0;
    }

}
