package com.machine.admin.product;

import com.machine.bean.Product;
import com.machine.service.IProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ProductTest {
    @Autowired
    private Product product;

    @Autowired
    private IProductService productService;

    @Test
    public void queryAllProductsTest() throws Exception{
        List<Product> products = productService.productList();
        if (products != null) {
            for (int i = 0; i < products.size(); i++) {
                System.out.println(products.get(i).getProductIsUsed());
            }
        }
    }

    @Test
    public void addProductTest() throws Exception {
        product.setProductName("手机");
        product.setProductPicture("21.jpg");
        product.setProductPrice(1000.2);
        product.setProductIsUsed(1);
        int i = productService.addProduct(product);
        System.out.println(i);
    }

}
