package com.junit;

import com.alibaba.fastjson.JSON;
import com.web.t_user.model.TUser;
import com.web.t_user.service.ITUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * @ClassName: JunitBaseTest
 * @Author : WH
 * @Date: 2019/4/28 10:52
 * @Description: 测试
 * @Version v1.0
 */
//@ActiveProfiles("testOne") // 需要和H2模拟的数据源对应上
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath*:spring-mybatis.xml", "classpath:spring-mvc.xml"})
public class JunitBaseTest {
    private org.slf4j.Logger logger = LoggerFactory.getLogger(JunitBaseTest.class);
    private static ApplicationContext context = null;
    @Resource
    private ITUserService tUserService;

    //  @Before
//  public void before() {
//      context = new ClassPathXmlApplicationContext("applicationContext.xml");
//      userService = (ITUserService) context.getBean("tUserService");
//  }
    static {
//      context = new ClassPathXmlApplicationContext("applicationContext.xml");
//      userService = (ITUserService) context.getBean("tUserService");
    }

    static {
//        context = new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
//        BeanFactory factory = (BeanFactory) context;
//        tUserService = (ITUserService) factory.getBean("tUserService");
    }

    static {
//        GenericXmlApplicationContext context = new GenericXmlApplicationContext();
//        context.setValidating(false);
//        context.load("classpath*:application*.xml");
//        context.refresh();
//        tUserService usersService = context.getBean(tUserService.class);
    }

    @Test
    public void test1() {
        TUser user = tUserService.getUserById(1);
        // System.out.println(user.getUserName());
        // logger.info("值："+user.getUserName());
        logger.info(JSON.toJSONString(user));
    }
}
