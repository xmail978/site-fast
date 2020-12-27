package admin.security;

import admin.login.SysService;
import admin.login.UserModel;
import com.jfinal.aop.Inject;
import com.jfinal.plugin.activerecord.Db;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.Date;
import java.util.List;

/**
 * @ClassName: MyRealm
 * @Author : WH
 * @Date: 2020/4/25 21:44
 * @Description:
 * @Version: v1.0
 */

public class MyRealm extends AuthorizingRealm {
    /*//注入Service
    @Inject
    SysService sysService;*/

    private SysService sysService = SysService.service;

    /**
     * @param authcToken 所需验证的token
     * @return null or 身份信息
     * @throws AuthenticationException 验证异常
     * @Description 获取用户验证信息
     */
    @Override
    public AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        UserModel sysUser = sysService.getByUsername(token.getUsername());
        if (null != sysUser) {
            if (!sysUser.getPassword().equals(String.valueOf(token.getPassword()))) {
                throw new AuthenticationException("密码错误");
            }
//            Db.update("update sys_admin set loginTime=?,loginCount=loginCount+1 where id=?", new Date(), "sysUser.getId()");
            return new SimpleAuthenticationInfo(sysUser, sysUser.getPassword(), sysUser.getUserName());
        } else {
            throw new AuthenticationException("用户不存在");
        }
    }


    /**
     * @param principals 用户身份
     * @return null or 授权信息
     * @Description 获取用户授权信息
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        UserModel principal = (UserModel) principals.getPrimaryPrincipal();
        //根据用户获取权限
        List<String> permissions = sysService.getPermissions(principal.getId());
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //stringPermissions结构：
        //user
        //user:list
        //user:add
        //user:edit
        //...
        info.addStringPermissions(permissions);
        return info;
    }
}
