package com.junit;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Classname JunitTest
 * @Description Junit 单元测试
 * @Date 2019/10/9 19:33
 * @Created by WH
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:applicationContext.xml"})
public class JunitTest {
    @Test
    public void test() {
    }
}
