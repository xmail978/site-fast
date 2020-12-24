package com.test.dao;

import sys.entity.User;
import common.DruidUtils;
import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.BeanProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * servlet数据库CRUD
 *
 * @Author : WH
 * @Date: 2020/4/19 20:24
 * @Description:
 * @Version: v1.0
 */
public class TestDao {
    public static TestDao dao = new TestDao();
    private static Connection conn = null;

    /***********************基本用法*************************************/
    public int save(User user) {
        int result = 0;
        try {
            conn = DruidUtils.getConnection();
            if (null == conn) {
                throw new Exception("数据库连接失败！");
            }
            String sql = "INSERT INTO t_user(id,user_name,password,age) VALUES (?,?,?,?) ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getId());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getPassword());
            ps.setInt(4, user.getAge());
            result = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            if (null != conn) {
                DruidUtils.close(conn);
            }
        }
        return result;
    }

    public boolean update(User user) {
        boolean flag = false;
        try {
            conn = DruidUtils.getConnection();
            if (null == conn) {
                throw new Exception("数据库连接失败！");
            }
            String sql = "UPDATE t_user SET user_name=? , password=? WHERE ID=? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getPassword());
            ps.setInt(3, user.getId());
            int result = ps.executeUpdate();
            if (result >= 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            if (null != conn) {
                DruidUtils.close(conn);
            }
        }
        return flag;
    }


    public Boolean deleteById(int id) {
        boolean flag = false;
        try {
            conn = DruidUtils.getConnection();
            if (null == conn) {
                throw new Exception("数据库连接失败！");
            }
            String sql = "DELETE FROM t_user WHERE ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int result = ps.executeUpdate();
            if (result >= 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            if (null != conn) {
                DruidUtils.close(conn);
            }
        }
        return flag;
    }


    public User queryById(int id) {
        User user = new User();
        try {
            conn = DruidUtils.getConnection();
            String sql = "SELECT * FROM t_user WHERE ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs == null) {
                throw new RuntimeException("查询信息失败！");
            }
            while (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setUserName(rs.getString("user_name"));
                user.setPassword(rs.getString("Password"));
                user.setAge(rs.getInt("age"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            if (null != conn) {
                DruidUtils.close(conn);
            }
        }
        return user;
    }

    public List<User> queryAll() {
        List<User> list = new ArrayList<User>();
        try {
            conn = DruidUtils.getConnection();
            // 编写sql语句
            String sql = "SELECT * FROM t_user";
            /*if(StringUtil.isNotEmpty(name)){//条件
                str = " WHERE NAME LIKE '%"+name+"%'";
            }*/
            // 创建一个 PreparedStatement 对象，初始化sql语句
            PreparedStatement ps = conn.prepareStatement(sql);
            // 获取执行sql语句后的结果集
            ResultSet rs = ps.executeQuery();
            User user = null;
            // 遍历结果集，添加到list中
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUserName(rs.getString("user_name"));
                user.setPassword(rs.getString("Password"));
                user.setAge(rs.getInt("age"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            if (null != conn) {
                DruidUtils.close(conn);
            }
        }
        return list;
    }

    /***********************DButils用法*************************************/
    QueryRunner queryRunner = new QueryRunner(DruidUtils.getDataSource());

    /**
     * 数据库字段跟JavaBean对应字段必须一模一样
     *
     * @author: WH
     * @date: 2020/4/20 10:59
     * @return:
     */
    public List<User> queryAllUser() {
        List<User> users = null;
        try {
            users = queryRunner.query("select * from t_user", new BeanListHandler<User>(User.class));
            return users;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 查询指定对应字段
     *
     * @author: WH
     * @date: 2020/4/20 10:59
     * @return:
     */
    public List<User> getAllUsers() {
        try {
            Map<String, String> map = new HashMap<>();
            map.put("user_name", "userName");//指定对应字段
            List<User> users = queryRunner.query("select * from t_user", new BeanListHandler<User>(User.class, new BasicRowProcessor(new BeanProcessor(map))));
            return users;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 数据库字段名称和bean中的字段名称除了下划线和大小写都一样的话, 用它就可以转换
     *
     * @author: WH
     * @date: 2020/4/20 10:59
     * @return:
     */
    public User getUserById(int id) {
        try {
            User user = queryRunner.query("select * from t_user where id = ?", new BeanHandler<User>(User.class, new BasicRowProcessor(new GenerousBeanProcessor())), id);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    //带事物操作
    public int saveByTransfer(User user) throws SQLException {
        Object[] obj = new Object[]{user.getId(), user.getUserName(), user.getPassword(), user.getAge()};
        String sql = "INSERT INTO t_user(id,user_name,password,age) VALUES (?,?,?,?) ";
        int row = queryRunner.update(DruidUtils.getTransConnection(), sql, obj);
        return row;
    }

    //带事物操作
    public int updateByTransfer(User user) throws SQLException {
        Object[] obj = new Object[]{user.getUserName(), user.getPassword(), user.getId()};
        String sql = "UPDATE t_user SET user_name=? , password=? WHERE ID=? ";
        int row = queryRunner.update(DruidUtils.getTransConnection(), sql, obj);
        return row;
    }
}
