package cn.test.service.impl;

import cn.test.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import cn.test.dao.UserDAO;

import cn.test.service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * @description: 注意：该的注解名称，与Spring-security.xml中指定的<security:authentication-provider user-service-ref="userService">名称必须相同。
 * @author: WH
 * @date: 2020/5/9 12:24
 */
@Service("userService")
public class UserServiceImpl implements UserDetailsService, UserService {

    @Autowired
    private UserDAO userDAO;

    public int insertUser(cn.test.model.User user) {
        return userDAO.insertUser(user);
    }


    public UserDetails loadUserByUsername(String username) {
        //第一步：通过用户名，去数据库查询用户信息
        cn.test.model.User myUser = userDAO.getUserByName(username);
        //第二步：根据用户信息，实例化，处理自己的用户对象封装成UserDetails
        //如果是使用未加密的帐号和密码校验，请在用户名和密码前面，添加一个标识{noop}
//		User userdetail = new User(登录用户名, 从数据库查询出来的用户密码, 用户状态，false表示无效，true表示有效, true, true, true, 获取当前登录用户的角色列表));
//        User userdetail = new User(myUser.getUsername(), "{noop}" + myUser.getPassword(), getAuthority(myUser.getRoles()));

        List roles = new ArrayList<Role>();
        Role r1 = new Role();
        r1.setRoleName("ROOT");
        Role r2 = new Role();
        r2.setRoleName("ADMIN");
        Role r3 = new Role();
        r3.setRoleName("USER");
        roles.add(r1);
        roles.add(r2);
        roles.add(r3);
        User userdetail = new User(myUser.getUsername(), "{noop}" + myUser.getPassword(), getAuthority(roles));
        //封装成spring security的user
        /*User userdetail = new User("", "",
                true, // 账号状态 0 表示停用 1表示启用
                true, true, true, null// grantedAuths // 用户的权限
        );*/
        return userdetail;
    }

    //作用就是返回一个List集合，集合中装入的是角色描述
    public List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {
        List<SimpleGrantedAuthority> list = new ArrayList<SimpleGrantedAuthority>();
        for (Role role : roles) {
            list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
        }
        return list;
    }
}
