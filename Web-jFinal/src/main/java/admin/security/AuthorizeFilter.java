package admin.security;

import admin.login.RoleService;
import admin.login.UserModel;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName: AuthorizeFilter
 * @Author : WH
 * @Date: 2020/4/25 21:59
 * @Description:
 * @Version: v1.0
 */
public class AuthorizeFilter extends AuthorizationFilter {
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        //-----------------用户验证------------------
        Subject currentUser = getSubject(request, response);
        if (!currentUser.isAuthenticated()) {
            return false;
        }
        //-----------------获取资源权限表达式-------------
        UserModel user = (UserModel) currentUser.getPrincipal();
        //request中加入attribute便于controller调用admin的信息
        request.setAttribute("user", user);
        // 根据actionKey分析出权限表达式
        HttpServletRequest req = ((HttpServletRequest) request);
        String root = req.getContextPath();
        String URI = req.getRequestURI();
        String actionKey = URI.replace(root, "");
        if ("".equals(actionKey)) {
            actionKey = "/";
        }
        RoleService roleService = new RoleService();
        String expression = roleService.getActionKeyExpression(actionKey);
        //-----------------进行鉴权-------------
        if (user == null) {
            return false;
        } else if (user.getStr("username").equals("super")) {
            //超级管理员具有所有权限
            return true;
        } else if (expression == null) {
            return false;
        } else if (currentUser.isPermitted(expression)) {
            //鉴权
            return true;
        } else {
            return false;
        }
    }
}
