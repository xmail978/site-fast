package sys.dao;

import common.DruidUtils;
import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.BeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import sys.entity.User;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDao {
    public static UserDao dao = new UserDao();
    QueryRunner qr = new QueryRunner(DruidUtils.getDataSource());

    /**
     * 添加用户
     *
     * @param user
     * @return 添加数量
     */
    public int addUser(User user) {
        try {
            return qr.update("insert into t_user(id,user_name,password,age) values (?,?,?,?)",
                    user.getId(), user.getUserName(), user.getPassword(), user.getAge());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 删除用户
     *
     * @param id
     */
    public int delUser(int id) {
        try {
            return qr.update("delete from t_user where id = ?", id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 修改用户
     *
     * @param user
     */
    public int updateUser(User user) {
        try {
            return qr.update("update t_user set user_name = ? where id = ?", user.getUserName(), user.getId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 查询所有用户
     */
    public List<User> getAllUsers() {
        List<User> users;
        try {
            Map<String, String> map = new HashMap<>();
            //指定对应字段
            map.put("user_name", "userName");
            users = qr.query("select * from t_user", new BeanListHandler<User>(User.class, new BasicRowProcessor(new BeanProcessor(map))));
            return users;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据用户id查询用户
     *
     * @param id：用户的id
     */
    public User getUserById(int id) {
        try {
            User user = qr.query("select * from t_user where id = ?", new BeanHandler<User>(User.class), id);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据用户名获取用户
     *
     * @param username
     * @return 用户
     */
    public User getUserByName(String username) {
        try {
            User user = qr.query("select * from t_user where user_name = ?", new BeanHandler<User>(User.class), username);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public User login(String username, String password) {
        try {
            return qr.query("select * from t_user where user_name=? and  password =?", new BeanHandler<User>(User.class), username, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public String getPassword(String username) {
        try {
            User user = qr.query("select password from t_user where user_name=? ", new BeanHandler<>(User.class), username);
            return user.getPassword();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
