package com.test.service;

import com.test.dao.TestDao;
import sys.entity.User;
import common.DruidUtils;


import java.sql.SQLException;


public class TestService {
    TestDao testDao = TestDao.dao;

    /**
     * 在业务层 模拟事物问题
     *
     * @param user1
     * @param user2
     * @throws SQLException
     */
    public boolean transfer(User user1, User user2) {
        boolean flag = false;
        try {
            //开启事务，在业务层处理事务，保证dao层的多个操作在同一个事务中进行
            DruidUtils.startTransaction();
            testDao.saveByTransfer(user1);
            //模拟程序出现异常让事务回滚
            int x = 1 / 0;
            testDao.updateByTransfer(user2);
            //SQL正常执行之后提交事务
            DruidUtils.commit();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
            //出现异常之后就回滚事务
            DruidUtils.rollback();
            flag = false;
        } finally {
            //关闭数据库连接
            DruidUtils.close();
        }
        return flag;
    }
}
