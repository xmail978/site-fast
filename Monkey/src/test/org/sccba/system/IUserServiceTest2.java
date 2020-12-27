package org.sccba.system;


import org.sccba.system.testUser.entity.User;
import org.sccba.system.testUser.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author WH
 * @ClassName: IUserServiceTest2
 * @Description: Test
 * @date 2019-3-07 上午11:17:57
 */
public class IUserServiceTest2 {
    private static final Logger log = LoggerFactory.getLogger(IUserServiceTest2.class);

    /**
     * @param args
     * @desc 测试
     */
    public static void main(String[] args) {
        ApplicationContext application = new ClassPathXmlApplicationContext("applicationContext.xml");
        IUserService uService = (IUserService) application.getBean("userService");
        User user = uService.getUserById(1);
        System.err.print("My Name is:" + user.getUserName());
        log.info("My Name is:" + user.getUserName());
    }
}
