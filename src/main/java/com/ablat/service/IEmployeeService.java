package com.ablat.service;

import com.ablat.bean.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IEmployeeService {

    public List<Employee> getAll();
}
