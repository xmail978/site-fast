package org.sccba.system.testUser.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.sccba.system.testUser.dao.UserMapper;
import org.sccba.system.testUser.entity.User;
import org.sccba.system.testUser.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: WangHui
 * @ClassName: UserServiceImpl
 * @Description: TODO(用户管理service)
 * @date 2017-2-28 上午11:58:42
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
    private Logger log = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserMapper userDao;

//	public UserServiceImpl() {
//		System.out.println("UserServiceImpl");
//	}

    public User getUserById(int id) {
        User user = new User();
        try {
            user = userDao.findUserById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public User findUserById(int id) {
        User user = new User();
        try {
            user = userDao.findUserById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public PageInfo<User> selectByPage(int currentPage, int pageSize) {
        PageHelper.startPage(currentPage, pageSize);
        List<User> user = userDao.selectByPage();
        PageInfo<User> pageInfo = new PageInfo<User>(user);
        return pageInfo;
    }

}
