package com.machine.service.impl;

import com.machine.bean.Machine;
import com.machine.dao.IMachineDao;
import com.machine.service.IMachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MachineServiceImpl implements IMachineService {
    @Autowired
    private IMachineDao machineDao;

    @Override
    public List<Machine> machineList() {
        //获取所有机器
        List<Machine> machines = machineDao.queryAllMachines();
        if (machines != null) {
            return machines;
        }
        return null;
    }
}
