package sys.service;

import sys.dao.UserDao;
import sys.entity.User;

import java.util.List;

/**
 * 系统用户业务逻辑层
 *
 * @author wh
 * @version 1.0
 * @date 2013/4/19 20:24
 */
public class UserService {

    UserDao userDao = new UserDao();


    public User UserLogin(String username, String password) {
        return userDao.login(username, password);
    }


    public int addUser(User user) {
        return userDao.addUser(user);
    }


    public int delUser(int id) {
        return userDao.delUser(id);
    }


    public int updateUser(User user) {
        return userDao.updateUser(user);
    }


    public List<User> findAllUser() {
        return userDao.getAllUsers();
    }


    public User findUserById(int id) {
        return userDao.getUserById(id);
    }


    public User findUserByName(String username) {
        return userDao.getUserByName(username);
    }
}
