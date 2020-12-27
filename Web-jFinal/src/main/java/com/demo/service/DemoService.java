package com.demo.service;

import admin.login.UserModel;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import java.util.List;

/**
 * @ClassName: HelloService
 * @Author : WH
 * @Date: 2020/4/10 14:21
 * @Description: 增删改查操作
 * @Version: v1.0
 */
public class DemoService {
    public static final DemoService me = new DemoService();
    //声明dao
    private UserModel userDao = new UserModel().dao();

    /**
     * @param user
     * @return void
     * @author WH
     * @description 保存
     * @date 2020/5/8 20:30
     */
    public void save(UserModel user) {
        user.save();
    }

    /**
     * @param user
     * @return void
     * @author WH
     * @description 更新
     * @date 2020/5/8 20:30
     */
    public void update(UserModel user) {
        user.update();
    }

    /**
     * @param user
     * @return void
     * @author WH
     * @description 删除
     * @date 2020/5/8 20:33
     */
    public void delete(UserModel user) {
        user.delete();
    }

    /**
     * @param user
     * @return java.util.List<com.demo.model.UserModel>
     * @author WH
     * @description 查询列表
     * @date 2020/5/8 20:35
     */
    public List<UserModel> findAll(UserModel user) {
        List<UserModel> all = user.findAll();
        return all;
    }

    /**
     * @param user
     * @return java.util.List<com.demo.model.UserModel>
     * @author WH
     * @description 查询
     * @date 2020/5/8 20:41
     */
    public List<UserModel> find(UserModel user) {
        List<UserModel> list = userDao.find("select * from t_user where 1 =1 ");
        return list;
    }

    /**
     * 根据id查询用户信息
     *
     * @param id
     * @return User
     */
    public UserModel findById(Integer id) {
        UserModel user = userDao.findById(id);
        return user;
    }

    /**
     * @param id
     * @return void
     * @author WH
     * @description 根据ID删除
     * @date 2020/5/8 20:32
     */
    public void deleteById(Integer id) {
        userDao.deleteById(id);
    }

    /**
     * @param
     * @return java.util.List<com.jfinal.plugin.activerecord.Record>
     * @author WH
     * @description 查询
     * @date 2020/5/8 20:42
     */
    public List<Record> getAllUser() {
        List<Record> records = Db.find("select * from t_user where 1 =1 ");
        return records;
    }

    /**
     * @param user
     * @return void
     * @author WH
     * @description 保存
     * @date 2020/5/8 21:26
     */
    public void save(Record user) {
        Db.save("t_user", user);
    }


    public Page<Record> queryPage(int page, int size, int id) {
        return Db.paginate(page, size, "select * ", " from t_user where id > ?", id);
    }
}
