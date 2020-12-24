package sys.realm;

import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import sys.dao.SysPermissionDao;
import sys.dao.SysRoleDao;
import sys.dao.UserDao;

import java.util.Set;

/**
 * @author wanghui
 * @className: MyAuthorizingRealm
 * @date: 2020/4/22 13:20
 * @description: 自定义Shiro安全验证
 * @version: v1.0
 */
public class MyAuthorizingRealm extends AuthorizingRealm {
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //能进入到这里，表示账号已经通过验证了
        String userName = (String) principalCollection.getPrimaryPrincipal();
        //通过DAO获取角色和权限
        Set<String> permissions = SysPermissionDao.dao.listPermissions(userName);
        Set<String> roles = SysRoleDao.dao.listRoles(userName);

        //授权对象
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        //把通过DAO获取到的角色和权限放进去
        authorizationInfo.setStringPermissions(permissions);
        authorizationInfo.setRoles(roles);
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取账号密码
        UsernamePasswordToken _token = (UsernamePasswordToken) token;
        String userName = token.getPrincipal().toString();
        String password = new String(_token.getPassword());
        //获取数据库中的密码
        String passwordInDB = UserDao.dao.getPassword(userName);

        //如果为空就是账号不存在，如果不相同就是密码错误，但是都抛出AuthenticationException，而不是抛出具体错误原因，免得给破解者提供帮助信息
        if (null == passwordInDB || !passwordInDB.equals(password)) {
            throw new AuthenticationException();
        }

        //认证信息里存放账号密码, getName() 是当前Realm的继承方法,通常返回当前类名 :databaseRealm
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(userName, password, getName());
        return authenticationInfo;
    }

}
