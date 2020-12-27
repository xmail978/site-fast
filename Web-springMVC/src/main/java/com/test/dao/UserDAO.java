package com.test.dao;

import sys.entity.UserT;
import org.springframework.jdbc.core.*;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: UserDAO
 * @Author : WH
 * @Date: 2020/4/18 18:02
 * @Description: jdbcTemplate常用操作
 * @Version: v1.0
 */
@Component
public class UserDAO {
    @Resource
    private JdbcTemplate jdbcTemplate;

    /*******************基本用法**************************/
    public void execute(String sql) {
        //jdbcTemplate.execute("CREATE TABLE USER (user_id integer, user_name varchar(100))");
        jdbcTemplate.execute(sql);
    }

    public int save(UserT entity) {
        String sql = "INSERT INTO t_user(id,user_name,age,password) VALUES (?,?,?,?)";
        // 调用update方法执行insert
        int row = jdbcTemplate.update(sql, entity.getId(), entity.getUserName(), entity.getAge(), entity.getPassword());
        return row;
    }

    public int insert(UserT entity) {
        String sql = "INSERT INTO t_user(id,user_name,age,password) VALUES (?,?,?,?)";
        // 调用update方法执行insert
        int row = jdbcTemplate.update(sql, new Object[]{entity.getId(), entity.getUserName(), entity.getAge(), entity.getPassword()});
        return row;
    }

    public int insertByStatement(UserT entity) {
        String sql = "INSERT INTO t_user(id,user_name,age,password) VALUES (?,?,?,?)";
        int row = jdbcTemplate.update(sql,
                new PreparedStatementSetter() {
                    @Override
                    public void setValues(PreparedStatement ps) throws SQLException {
                        ps.setInt(1, entity.getId());
                        ps.setString(2, entity.getUserName());
                        ps.setInt(3, entity.getAge());
                        ps.setString(4, entity.getPassword());
                    }
                });
        return row;
    }


    // 更新单行数据
    public int update(UserT entity) {
        String sql = "UPDATE t_user SET user_name=?,age=?,password=? WHERE id=?";
        return jdbcTemplate.update(sql, entity.getUserName(), entity.getAge(), entity.getPassword(), entity.getId());
    }

    // 更新
    public int modify(UserT entity) {
        String sql = "UPDATE t_user SET user_name=? WHERE id=?";
        return jdbcTemplate.update(sql, new Object[]{entity.getUserName(), entity.getId()});
    }

    // 根据id进行删除
    public int delete(int id) {
        return jdbcTemplate.update("DELETE FROM t_user WHERE id=?", id);
    }


    public Long queryTotal() {
        String sql = "select count(1) from t_user";
        Long total = jdbcTemplate.queryForObject(sql, Long.class);
        return total;
    }

    public Map<String, Object> queryForMap(int id) {
        String sql = "select * from t_user where id = ? ";
        Map<String, Object> map = jdbcTemplate.queryForMap(sql, id);
        return map;
    }

    public List<Map<String, Object>> queryForList(int id, String name) {
        String sql = "select * from t_user where id = ? or user_name = ?";
        List<Map<String, Object>> list = jdbcTemplate.queryForList(sql, id, name);
        return list;
    }


    //只支持查询一个字段，并返回一个基本类型对应包装类型的对象 如：Integer
    public Object queryForObject(int id) {
        String sql = "select count(1) from t_user";
        Integer total = jdbcTemplate.queryForObject(sql, Integer.class);
        return total;
    }

    public UserT queryById(int id) {
        return jdbcTemplate.queryForObject("select * from t_user where id=?", new BeanPropertyRowMapper<>(UserT.class), id);
    }

    public List<UserT> queryList() {
        List<UserT> userList = jdbcTemplate.query("select * from t_user", new Object[]{}, new BeanPropertyRowMapper<UserT>(UserT.class));
        return userList;
    }

    public UserT queryByRowHandler(UserT entity) {
        final UserT user = new UserT();
        String sql = " select * from t_user where id = ? ";
        jdbcTemplate.query(sql,
                new Object[]{entity.getId()},
                new RowCallbackHandler() {
                    @Override
                    public void processRow(ResultSet rs) throws SQLException {
                        user.setId(rs.getInt("id"));
                        user.setUserName(rs.getString("User_Name"));
                        user.setAge(rs.getInt("age"));
                        user.setPassword(rs.getString("Password"));
                    }
                });
        return user;
    }

    /*******************批量执行**************************/
    public List<UserT> queryByIds(List<Integer> ids) {
        StringBuilder strIds = new StringBuilder();
        for (Integer id : ids) {
            strIds.append(id).append(",");
        }
        return jdbcTemplate.query("select * from t_user where id in (" +
                strIds.substring(0, strIds.length() - 1) + ")", new BeanPropertyRowMapper<>(UserT.class));
    }

    public int[] batchUpdate(String[] names, int[] ids) {
        // 执行多条sql的场景
        int[] ans = jdbcTemplate.batchUpdate("update t_user set user_name='" + names[0] + "' where id =" + ids[0], "update t_user set user_name='" + names[1] + "' where id =" + ids[1]);
        return ans;
    }

    public int[] batchUpdate2(String[] names, int[] ids) {
        // 占位替换方式
        int[] ans = jdbcTemplate.batchUpdate("update t_user set user_name=? where id =?",
                Arrays.asList(new Object[]{names[0], ids[0]}, new Object[]{names[1], ids[1]}));
        return ans;
    }

    public int[] batchUpdateByStatement(String[] names, int[] ids) {
        // statement方式
        int[] ans = jdbcTemplate
                .batchUpdate("update t_user set user_name = ? where id = ?", new BatchPreparedStatementSetter() {
                    @Override
                    public void setValues(PreparedStatement preparedStatement, int i) throws SQLException {
                        preparedStatement.setString(1, names[i]);
                        preparedStatement.setInt(2, ids[i]);
                    }

                    @Override
                    public int getBatchSize() {
                        return 2;
                    }
                });
        return ans;
    }

    /*******************实现数据表与字段的映射RowMapper用法**************************/
    public UserT getById(Integer id) {
        String sql = "SELECT * FROM t_user WHERE id = ?";
        UserT userInfo = jdbcTemplate.queryForObject(sql, new UserT(), new Object[]{id});
        return userInfo;
    }

    public List<UserT> findAll() {
        String sql = "SELECT * FROM t_user";
        List<UserT> userInfos = jdbcTemplate.query(sql, new UserT());
        return userInfos;
    }


}
