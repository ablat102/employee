package com.ablat.service.impl;

import com.ablat.bean.Employee;
import com.ablat.dao.EmployeeDao;
import com.ablat.service.ILoginService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.logging.Logger;

@Service("loginService")
public class LoginServiceImpl implements ILoginService {

    @Autowired
    EmployeeDao employeeDao;

    /**
     * 查询
     * @param employeeNo 员工
     * @return 员工
     */
    @Override
    public Employee getEmployee(String employeeNo ) {

        return employeeDao.queryEmployee(employeeNo);
    }
}
