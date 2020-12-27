package org.sccba.system.login.service;


import com.google.common.collect.Maps;
import org.apache.log4j.Logger;
import org.sccba.system.login.dao.PermissionDao;
import org.sccba.system.login.dao.RoleDao;
import org.sccba.system.login.dao.UserDao;
import org.sccba.system.login.model.LoginPermission;
import org.sccba.system.login.model.LoginRole;
import org.sccba.system.login.model.LoginUser;
import org.sccba.system.util.CacheUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author WH
 * @ClassName: SystemService
 * @Description: Controller
 * @date 2019-3-07 上午11:08:08
 */
@Service
public class SystemService {
    private static Logger logger = Logger.getLogger(SystemService.class);
    @Resource
    private UserDao userDao;// = SpringContextHolder.getBean(UserDao.class);
    @Resource
    private RoleDao roleDao;// = SpringContextHolder.getBean(RoleDao.class);
    @Resource
    private PermissionDao permissionDao;


    public String login(String loginName) {
        String rs;
        Object password = CacheUtils.get(loginName);
        if (password != null) {
            rs = (String) password;
        } else {
            Map param = new HashMap<>();
            param.put("loginName", loginName);
            rs = userDao.getPassword(param);
            CacheUtils.put(loginName, rs);
        }
        return rs;
    }

    public String getPasswordByName(String loginName) {
        Map param = Maps.newHashMap();
        param.put("loginName", loginName);
        String password = userDao.getPassword(param);
        return password;
    }

    /*public String login(String username) {
        String rs = null;
        Object cachePassword = CacheUtils.get(username);//缓存密码

        Map param = new HashMap<>();
        param.put("username", username);
        String password = userDao.login(param);//数据库密码

        if (cachePassword != null) {
            rs = (String) cachePassword;
            if(rs.equals(password)){
                rs = password;
            }else {
                rs = null;
            }
        }
        CacheUtils.put(username, rs);
        return rs;
    }*/

    public List<LoginRole> getRoleByUserName(String loginName) {
        Map param = new HashMap<>();
        param.put("loginName", loginName);
        List<LoginRole> roles = roleDao.getRoleByUserName(param);
        for (LoginRole role : roles) {
            role.setPermissions(getPermissionByRole(role));//角色对应权限
        }
        return roles;
    }

    public List<LoginPermission> getPermissionByRole(LoginRole role) {
        Map param = new HashMap<>();
        param.put("roleId", role.getRoleId());
        return permissionDao.getPermissionByRole(param);
    }

    public LoginUser getUserByName(String loginName) {
        Map map = Maps.newHashMap();
        map.put("loginName", loginName);
        LoginUser user = userDao.getUserByName(map);
        user.setRoles(getRoleByUserName(user.getLoginName()));//用户添加角色
        return user;
    }
}
