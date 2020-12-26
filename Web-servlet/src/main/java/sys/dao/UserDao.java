package sys.dao;

import common.DruidUtils;
import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.BeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import sys.entity.SysUser;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 系统用户久化层
 *
 * @author wh
 * @version 1.0
 * @date 2013/4/19 20:24
 */
public class UserDao {
    public static UserDao dao = new UserDao();
    QueryRunner qr = new QueryRunner(DruidUtils.getDataSource());

    /**
     * 添加用户
     *
     * @param user 系统用户
     * @return 添加数量
     */
    public int addUser(SysUser user) {
        try {
            return qr.update("insert into sys_user(id,username,password,loginname) values (?,?,?,?)",
                    user.getId(), user.getUsername(), user.getPassword(), user.getLoginName());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 删除用户
     *
     * @param id 主键
     */
    public int delUser(int id) {
        try {
            return qr.update("delete from sys_user where id = ?", id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 修改用户
     *
     * @param user 系统用户
     */
    public int updateUser(SysUser user) {
        try {
            return qr.update("update sys_user set username = ? where id = ?", user.getUsername(), user.getId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 查询所有用户
     */
    public List<SysUser> getAllUsers() {
        try {
            Map<String, String> map = new HashMap<>(15);
            //指定对应字段
            map.put("ID_CARD", "idCard");
            map.put("CREATOR_ID", "createId");
            map.put("CREATE_TIME", "createTime");
            map.put("UPDATER_ID", "updateId");
            map.put("UPDATE_TIME", "updateTime");
            map.put("ORG_ID", "orgId");
            return qr.query("select * from sys_user", new BeanListHandler<>(SysUser.class, new BasicRowProcessor(new BeanProcessor(map))));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据用户id查询用户
     *
     * @param id：用户的id
     */
    public SysUser getUserById(int id) {
        try {
            return qr.query("select * from sys_user where id = ?", new BeanHandler<>(SysUser.class), id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据用户名获取用户
     *
     * @param username 用户名
     * @return 用户
     */
    public SysUser getUserByName(String username) {
        try {
            return qr.query("select * from sys_user where username = ?", new BeanHandler<>(SysUser.class), username);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public SysUser login(String username, String password) {
        try {
            return qr.query("select * from sys_user where username=? and  password =?", new BeanHandler<>(SysUser.class), username, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public String getPassword(String username) {
        try {
            SysUser user = qr.query("select password from sys_user where username=? ", new BeanHandler<>(SysUser.class), username);
            return user.getPassword();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
