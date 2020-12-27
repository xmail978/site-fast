package junit;

import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
// 加载spring配置文件
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
//@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
public class SpringJunit4 {
    protected Logger logger = LoggerFactory.getLogger(SpringJunit4.class);
}