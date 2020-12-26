package com.test;

import com.test.dao.TestDao;
import com.test.model.TestUser;
import com.test.service.TestService;
import common.DruidUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import sys.entity.User;

import java.sql.SQLException;
import java.util.List;

/**
 * DBUtil测试
 *
 * @author WH
 * @date 2013/08/23 10:23
 * @data 1.0
 */
public class DBUtilTest {
    QueryRunner qr = new QueryRunner(DruidUtils.getDataSource());
    TestDao testDao = TestDao.dao;
    TestService testService = new TestService();

    @Test
    public void save() {
        TestUser user = new TestUser();
        user.setId(200);
        user.setUserName("xiaoming");
        user.setPassword("123456");
        user.setAge(20);
        testDao.save(user);
        TestUser u = testDao.queryById(user.getId());
        System.out.println(u);
    }

    @Test
    public void update() {
        TestUser user = new TestUser();
        user.setId(200);
        TestUser u = testDao.queryById(user.getId());
        u.setAge(30);
        u.setUserName("赵四");
        testDao.update(u);
        System.out.println(u);
    }

    @Test
    public void queryById() {
        TestUser user = testDao.queryById(200);
        System.out.println(user);
    }

    @Test
    public void queryAll() {
        List<TestUser> users = testDao.queryAll();
        for (TestUser user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void deleteById() {
        Boolean flag = testDao.deleteById(200);
        System.out.println("删除：" + flag);
    }

    @Test
    public void getUserById() {
        TestUser user = testDao.getUserById(1);
        System.out.println(user);
    }

    @Test
    public void getUser() throws SQLException {
        List<TestUser> users = qr.query("select * from t_user", new BeanListHandler<>(TestUser.class));
        System.out.println(users);
    }

    @Test
    public void queryAllUser() throws SQLException {
        List<TestUser> users = testDao.queryAllUser();
        System.out.println(users);
    }

    @Test
    public void getAllUsers() throws SQLException {
        List<TestUser> users = testDao.getAllUsers();
        System.out.println(users);
    }

    /**
     * 模拟事物
     *
     * @author WH
     * @date 2020/4/21 10:40
     */
    @Test
    public void transfer() throws SQLException {
        TestUser user1 = new TestUser();
        user1.setId(500);
        user1.setAge(30);
        user1.setUserName("赵四");
        user1.setPassword("123456");
        TestUser user2 = new TestUser();
        user2.setId(1);
        user2.setAge(50);
        user2.setPassword("321654");
        user2.setUserName("刘能");
        boolean flag = testService.transfer(user1, user2);
        System.out.println("事物方法执行返回结果：" + flag);
    }


}