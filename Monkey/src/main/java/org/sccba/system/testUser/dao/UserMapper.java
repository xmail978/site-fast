package org.sccba.system.testUser.dao;


import org.apache.ibatis.annotations.Select;
import org.sccba.system.testUser.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
//    int deleteByPrimaryKey(Integer id);
//    int insert(User record);
//    int insertSelective(User record);
//    int updateByPrimaryKeySelective(User record);
//    int updateByPrimaryKey(User record);
    @Select("select * from user_t where id = #{id}")
    User selectById(Integer id);
    User findUserById(int id);
    List<User> selectByPage();
}