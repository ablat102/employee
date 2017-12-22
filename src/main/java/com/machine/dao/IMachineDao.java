package com.machine.dao;

import com.machine.bean.Machine;

import java.util.List;

/**
 * 机器DAO
 */
public interface IMachineDao {

    /**
     * 查询所有机器
     * @return 机器对象集合
     */
    public List<Machine> queryAllMachines();

}
