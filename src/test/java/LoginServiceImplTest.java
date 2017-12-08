
import com.ablat.bean.Employee;
import com.ablat.dao.EmployeeDao;
import com.ablat.service.ILoginService;
import com.ablat.service.impl.LoginServiceImpl;
import org.apache.log4j.Logger;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * LoginService Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>ʮ���� 7, 2017</pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class LoginServiceImplTest {
    private Logger logger= Logger.getLogger(LoginServiceImplTest.class);

    @Autowired
    ILoginService loginService;

    @Before("")
    public void before() throws Exception {
    }

    @After("")
    public void after() throws Exception {
    }

    /**
     * Method: getEmployee()
     */
    @Autowired()
    Employee employee;
    @Test
    public void testGetEmployee() throws Exception {
        Employee employees = loginService.getEmployee("000001");
        String employeeName = employees.getEmployeeName();
        System.out.println(employeeName);

    }


} 
