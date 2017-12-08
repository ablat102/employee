package com.ablat.dao;

import com.ablat.bean.Employee;

import java.util.List;

/**
 * 员工
 */
public interface EmployeeDao {

    /**
     * 查询所有员工
     *
     * @return 员工集合
     */


    public List<Employee> queryAllEmployees();

    /**
     * 根据员工编号查询员工
     *
     * @param employeeNo 员工编号
     * @return 员工
     */
    public Employee queryEmployeeById(String employeeNo);

    /**
     * 根据员工姓名查询
     *
     * @param employeeName 员工名称
     * @return 员工
     */
    public Employee queryEmployeeByName(String employeeName);

    /**
     * 添加员工
     *
     * @param employee 员工
     * @return 影响的行数
     */
    public int addEmployee(Employee employee);

    /**
     * 通过员工编号和员工密码查询
     * @param employeeNo 员工
     * @return 员工
     */
    public Employee queryEmployee(String employeeNo);
}
