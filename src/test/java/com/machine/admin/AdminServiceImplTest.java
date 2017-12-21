package com.machine.admin;

import com.machine.bean.Admin;
import com.machine.dao.IAdminDao;
import com.machine.service.IAdminService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * AdminServiceImpl Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>ʮ���� 19, 2017</pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class AdminServiceImplTest {

    @Resource
    private IAdminService adminService;
    @Autowired
    private Admin admin;
    @Autowired
    private IAdminDao adminDao;

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: login(String adminName, String adminPassword, String adminRole)
     */
    @Test
    public void testLogin() throws Exception {
        admin.setAdminName("张三");
        admin.setAdminPassword("1");
        admin.setAdminRole(1);
        Object login = adminService.login(admin.getAdminName(), admin.getAdminPassword(), admin.getAdminRole());
        System.out.println(login);
    }


    @Test
    public void testAdminRole() {

    }


    /**
     * Method: addAdmin(Admin admin)
     */
    @Test
    public void testAddAdmin() throws Exception {
        admin.setAdminName("张三");
        admin.setAdminPassword("1234");
        admin.setAdminPhone("18009293793");
        admin.setAdminRole(1);
        adminService.addAdmin(admin);
    }

    @Test
    public void testCheckName() throws Exception {
        boolean flag = adminService.checkName("张");
        System.out.println(flag);

    }

    //测试权限
    @Test
    public void testCheckRole() {

    }

    @Test
    public void testAllAdmins() throws Exception {
        List<Admin> admins = adminService.allAdmins();
        if (admins != null) {
            System.out.println(adminService.allAdmins().size());
            for (int i = 0; i < admins.size(); i++) {
                System.out.println(admins.get(i).getAdminName());
            }
        }
    }

} 
