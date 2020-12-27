package junit;

import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @ClassName: JunitBoot
 * @Author : WH
 * @Date: 2019/4/28 10:52
 * @Description: 测试
 * @Version v1.0
 */
@RunWith(SpringJUnit4ClassRunner.class) //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath*:dispatcher-servlet.xml"})
public class JunitBoot {
    protected Logger logger = LoggerFactory.getLogger(JunitBoot.class);

}
