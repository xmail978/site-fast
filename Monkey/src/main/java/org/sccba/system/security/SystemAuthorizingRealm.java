package org.sccba.system.security;


import com.github.pagehelper.StringUtil;
import org.apache.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.sccba.system.login.model.LoginPermission;
import org.sccba.system.login.model.LoginRole;
import org.sccba.system.login.service.SystemService;
import org.sccba.system.util.SpringContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author WH
 * @ClassName: SystemAuthorizingRealm
 * @Description: Realm
 * @date 2019-3-07 上午11:09:07
 */
@Service
public class SystemAuthorizingRealm extends AuthorizingRealm {
//    @Autowired
    private static SystemService systemService;

    private static Logger logger = Logger.getLogger(SystemAuthorizingRealm.class);

    /**
     * @description: 获取系统业务对象
     */
    public SystemService getSystemService() {
        if (systemService == null) {
            systemService = SpringContextHolder.getBean(SystemService.class);
        }
        return systemService;
    }


    /**
     * @description:授权
     * @author: WangHui
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String currentUsername = (String) super.getAvailablePrincipal(principals);
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        if (StringUtil.isNotEmpty(currentUsername)) {
            //添加一个角色,不是配置意义上的添加,而是证明该用户拥有admin角色
            List<LoginRole> roleList = systemService.getRoleByUserName(currentUsername);
            if (roleList != null && !roleList.isEmpty()) {
                for (LoginRole role : roleList) {
                    simpleAuthorInfo.addRole(role.getRoleName());//添加角色
                    logger.info("已为用户[" + currentUsername + "]赋予了[" + role.getRoleName() + "]角色");

                    List<LoginPermission> permissions = role.getPermissions();
                    if (permissions != null && !permissions.isEmpty()) {
                        for (LoginPermission permission : permissions) {
                            //添加权限
//                        simpleAuthorInfo.addStringPermission("admin:manage");
                            simpleAuthorInfo.addStringPermission(permission.getName());
                            logger.info("已为用户[" + currentUsername + "]赋予了[" + permission.getName() + "]权限");
                        }
                    }
                }
            }

            return simpleAuthorInfo;
        }
        return simpleAuthorInfo;
    }

    /**
     * @description:认证
     * @author: WangHui
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取基于用户名和密码的令牌
        //实际上这个authcToken是从LoginController里面currentUser.login(token)传过来的
        UsernamePasswordToken authToken = (UsernamePasswordToken) token;
        logger.info("MyRealm.doGetAuthenticationInfo.token=" + token);
        //此处无需比对,比对的逻辑Shiro会做,我们只需返回一个和令牌相关的正确的验证信息
        //第一个参数填登录用户名,第二个参数填合法的登录密码
        String username = authToken.getUsername();
        if (StringUtil.isNotEmpty(username)) {
            String password = getSystemService().login(username);
            if (StringUtil.isNotEmpty(password)) {
                AuthenticationInfo authInfo = new SimpleAuthenticationInfo(username, password, this.getName());
                return authInfo;
            }
        }
        //没有返回登录用户名对应的SimpleAuthenticationInfo对象时,就会在LoginController中抛出UnknownAccountException异常
        return null;
    }
}
