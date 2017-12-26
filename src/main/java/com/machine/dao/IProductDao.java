package com.machine.dao;

import com.machine.bean.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 物品DAO
 */

public interface IProductDao {

    /**
     * 查询所有物品信息
     * @return 物品集合
     */
    public List<Product> queryAllProducts();

    /**
     * 删除所有物品
     * @return 行数
     */
    public int deleteAllProducts();

    /**
     * 通过物品编号删除物品
     * @param productId  物品编号
     * @return 行数
     */
    public int deleteProductsByProductId(Integer productId);

    /**
     * 添加物品
     * @param product 物品对象
     * @return 成功添加的个数
     */
    public int addProduct(Product product);


}
