package cn.test;

import cn.junit.JunitTest;
import cn.test.model.User;
import cn.test.service.UserService;
import org.junit.Test;

/**
 * @Classname UserTest
 * @Description TODO添加描述
 * @Date 2019/10/15 11:22
 * @Created by WH
 */
public class UserTest extends JunitTest {
    private UserService userService;
    {
        userService = (UserService) context.getBean("userServiceImpl");
    }

    @Test
    public void addUser() {
        User user = new User();
        user.setPassword("xifan");
        user.setUsername("xifan");
        System.out.println(userService.insertUser(user));
    }
}
