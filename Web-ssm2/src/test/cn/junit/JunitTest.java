package cn.junit;

import org.junit.Before;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class JunitTest {
    public ApplicationContext context;

    @Before
    public void before() {
        context = new ClassPathXmlApplicationContext(
                new String[]{"conf/spring.xml",
                        "classpath:conf/spring-mybatis.xml"});
    }
}
