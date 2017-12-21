package com.machine.admin.user;

import com.machine.bean.Admin;
import com.machine.bean.User;
import com.machine.dao.IAdminDao;
import com.machine.dao.IUserDao;
import com.machine.service.IAdminService;
import com.machine.service.IUserService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
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
public class UserServiceImplTest {

    @Resource
    private IUserService userService;
    @Autowired
    private User user;
    @Autowired
    private IUserDao userDao;

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * 测试查询所有用户
     * Method: login(String adminName, String adminPassword, String adminRole)
     */

    @Test
    public void testAllAdmins() throws Exception {
        List<User> users = userService.userList();
        if (users != null) {
            System.out.println(userService.userList().size());
            for (int i = 0; i < users.size(); i++) {
                System.out.println(users.get(i).getUserName());
                System.out.println(users.get(i));
            }
        }
    }

} 
