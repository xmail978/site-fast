package com.tuser.dao;

import com.tuser.model.TUser;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: ITUserDao
 * @Author : WH
 * @Date: 2019/4/28 11:05
 * @Description: TUser的dao
 * @Version v1.0
 */

public interface ITUserDao {
    TUser selectByPrimaryKey(int userId);

    @Select("select * from sys_user_err_msg")
    List<Map<String, Object>>  testErrMsgDao();
}
