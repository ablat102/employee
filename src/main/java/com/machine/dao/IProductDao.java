package com.machine.dao;

import com.machine.bean.Product;

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

}
