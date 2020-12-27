package cn.test.dao;

import cn.test.model.User;


public interface UserDAO {
    int insertUser(User user);

    User getUserByName(String userName);
}
