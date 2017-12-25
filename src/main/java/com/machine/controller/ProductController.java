package com.machine.controller;

import com.machine.bean.Product;
import com.machine.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    /**
     * 物品列表页面
     * @return 物品列表页面
     */
    @RequestMapping(value = "productList",method = RequestMethod.GET)
    public String productList(HttpServletRequest request){
        List<Product> products = productService.productList();
        if (products != null) {
            request.setAttribute("products",products);
        }

        return "productList";
    }

    @RequestMapping(value = "addProduct",method = RequestMethod.GET)
    public String addProduct(){
        return "addProduct";
    }

    @RequestMapping(value = "addProduct",method = RequestMethod.POST)
    @ResponseBody
    public String addProduct(
            @RequestParam(value = "productName",required = false) String productName ,
            @RequestParam(value = "status",required = false) Integer status,
            @RequestParam(value = "productPrice",required = false) Double productPrice,
            @RequestParam(value = "productWeight",required = false) Double productWeight ) {
        if (productName != null
                 ) {
            System.out.println(productName);
            return productPrice.toString();
        }
        return productName;
    }
}
