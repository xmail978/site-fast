package org.sccba.system.testUser.service;


import com.github.pagehelper.PageInfo;
import org.sccba.system.testUser.entity.User;

public interface IUserService {

    public User getUserById(int id);
    public User findUserById(int id);
    PageInfo<User> selectByPage(int currentPage, int pageSize);
}
