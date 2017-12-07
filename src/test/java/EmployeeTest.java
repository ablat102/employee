import com.ablat.bean.Employee;
import com.ablat.dao.EmployeeDao;
import com.ablat.service.impl.EmployeeServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.logging.Logger;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class EmployeeTest {
    private Logger logger;

    @Autowired
    EmployeeDao employeeDao;
    @Test
    public void selectAllEmployeeTest(){
        List<Employee> all = employeeDao.queryAllEmployees();
        System.err.println(all.size());
    }
}
