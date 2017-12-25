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

}
