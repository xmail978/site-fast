package org.sccba.system;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.sccba.system.testUser.entity.User;
import org.sccba.system.testUser.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author WH
 * @ClassName: IUserServiceTest
 * @Description: 配置spring和junit整合
 * @Description: junit启动时加载springIOC容器 spring-test,junit
 * @date 2019-3-07 上午11:18:36
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class IUserServiceTest {
    private Logger log = LoggerFactory.getLogger(this.getClass());
    @Autowired
    public IUserService userService;

    @Test
    public void getUserByIdTest() {
        User user = userService.getUserById(1);
        System.err.print("My Name is:" + user.getUserName());
        log.info("My Name is:" + user.getUserName());
    }

}
