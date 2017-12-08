import com.ablat.bean.Employee;
import com.ablat.dao.EmployeeDao;
import com.ablat.service.impl.EmployeeServiceImpl;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class EmployeeTest {
    private Logger logger= Logger.getLogger(EmployeeTest.class);
    @Autowired
    EmployeeDao employeeDao;

    @Test
    public void selectAllEmployeeTest() {
        List<Employee> all = employeeDao.queryAllEmployees();
        System.err.println(all.size());
    }
}
