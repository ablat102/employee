package com.machine.controller;

import com.machine.bean.Product;
import com.machine.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 物品控制器
 */

@Controller
@RequestMapping(value = "admin/product")
public class ProductController {
    @Autowired
    private IProductService productService;
    @Autowired
    private Product product;

    /**
     * 物品列表页面
     *
     * @return 物品列表页面
     */
    @RequestMapping(value = "productList", method = RequestMethod.GET)
    public String productList(HttpServletRequest request) {
        List<Product> products = productService.productList();
        if (products != null) {
            request.setAttribute("products", products);
        }

        return "productList";
    }

    @RequestMapping(value = "addProduct", method = RequestMethod.GET)
    public String addProduct() {
        return "addProduct";
    }

    /**
     * 添加物品
     *
     * @param productName
     * @param status
     * @param productPrice
     * @return
     */
    @RequestMapping(value = "addProduct", method = RequestMethod.POST)
    @ResponseBody
    public int addProduct(
            @RequestParam(value = "productName", required = false) String productName,
            @RequestParam(value = "status", required = false) Integer status,
            @RequestParam(value = "productPrice", required = false) double productPrice,
            @RequestParam(value = "productPicture", required = false) String productPicture,
            MultipartFile uploadFile) {
        System.out.println(productName);
        product.setProductName(productName);
        product.setProductPrice(productPrice);
        product.setProductPicture(productPicture);
        product.setProductIsUsed(status);
        int i = productService.addProduct(product);
//            如果返回的是0 ，则传递参数空，1 添加成功 ， 2 已经有该物品
        if (i == 0) {
            return 1;
        }
        return 0;
    }


    @RequestMapping(value = "deleteProduct", method = RequestMethod.POST)
    public String deleteProduct(@RequestParam(value = "productId", required = true) Integer productId) {
        System.out.println(productId);
        return "productList";
    }
}
