package com.demo.service;

import admin.login.UserModel;

import java.util.List;

/**
 * @ClassName: HelloService
 * @Author : WH
 * @Date: 2020/4/10 14:21
 * @Description: TODO 添加描述
 * @Version: v1.0
 */
public class HelloService {
    //声明dao
    private UserModel userDao = new UserModel().dao();

    /**
     * 获取所有用户信息
     *
     * @return List<User>
     */
    public List<UserModel> getAllUser() {
//        List<Record> records=Db.find(sql);
        List<UserModel> users = userDao.find("select * from t_user");
        return users;
    }

    /**
     * 删除用户
     */
    public void delUserById(Integer id) {
        userDao.deleteById(id);
    }

    /**
     * 添加用户
     *
     * @param user
     */
    public void addUser(UserModel user) {
        user.save();
    }

    /**
     * 根据id查询用户信息
     *
     * @param id
     * @return User
     */
    public UserModel findUserById(Integer id) {
        UserModel user = userDao.findById(id);
        return user;
    }

    /**
     * 更新用户信息
     *
     * @param user
     */
    public void updateUser(UserModel user) {
        user.update();
    }
}
