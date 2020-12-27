package com.tuser.service.impl;

import com.tuser.dao.ITUserDao;
import com.tuser.model.TUser;
import com.tuser.service.ITUserService;

import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


/**
 * @ClassName: TUserServiceImpl
 * @Author : WH
 * @Date: 2019/4/28 10:50
 * @Description: TUserService
 * @Version v1.0
 */
@Service("tUserService")
public class TUserServiceImpl implements ITUserService, UserDetailsService {
    @Resource
    private ITUserDao userDao;


    @Override
    public TUser getUserById(int userId) {
        return this.userDao.selectByPrimaryKey(userId);
    }

    @Override
    public List<Map<String, Object>> testErrMsgService() {
        return userDao.testErrMsgDao();
    }


    @Override
    public UserDetails loadUserByUsername(String username) {
        //第一步：通过用户名，去数据库查询用户信息
        //第二步：根据用户信息，实例化，处理自己的用户对象封装成UserDetails
        //如果是使用未加密的帐号和密码校验，请在用户名和密码前面，添加一个标识{noop}
        //  User user=new User(userInfo.getUsername(),"{noop}"+userInfo.getPassword(),getAuthority(userInfo.getRoles()));
//		User user = new User(登录用户名, 从数据库查询出来的用户密码, 用户状态，false表示无效，true表示有效, true, true, true, 获取当前登录用户的角色列表));
        //封装成spring security的user
        User userdetail = new User("", "",
                true, // 账号状态 0 表示停用 1表示启用
                true, true, true, null// grantedAuths // 用户的权限
        );
        return userdetail;
    }

    //作用就是返回一个List集合，集合中装入的是角色描述
   /* public List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {
        List<SimpleGrantedAuthority> list = new ArrayList<SimpleGrantedAuthority>();
        for (Role role : roles) {
            list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
        }
        return list;
    }*/
}
