package com.ablat.service.impl;

import com.ablat.bean.Employee;
import com.ablat.dao.EmployeeDao;
import com.ablat.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service(value = "employeeServiceImpl")
public class EmployeeServiceImpl implements IEmployeeService {

    @Autowired
    EmployeeDao employeeDao;
    @Override
    public List<Employee> getAll() {
        return employeeDao.queryAllEmployees() ;
    }
}
