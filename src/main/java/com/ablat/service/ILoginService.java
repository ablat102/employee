package com.ablat.service;

import com.ablat.bean.Employee;
import org.springframework.stereotype.Service;

/**
 * 登录业务处理
 */
@Service(value = "employeeService")
public interface ILoginService {

    /**
     * 获取员工
     * @return
     */
    public Employee getEmployee(String employeeNo);
}
