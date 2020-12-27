package org.sccba.system.login.controller;


import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.sccba.system.login.model.LoginUser;
import org.sccba.system.login.service.SystemService;
import org.sccba.system.password.PasswordEncoder;
import org.sccba.system.util.CacheUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @author WH
 * @ClassName: LoginUserController
 * @Description: Controller
 * @date 2019-3-07 上午11:07:44
 */
@Controller
@RequestMapping("loginUser")
public class LoginUserController {

    private static Logger logger = Logger.getLogger(LoginUserController.class);

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private SystemService service;

    @RequestMapping(value = "index")
    public String index() {
        return "ronge/index";
    }

    @RequiresRoles("admin")
    @RequestMapping(value = "back")
    @ResponseBody
    public Map fun() {
        Map map = new HashMap();
        String password = service.login("admin");
        map.put("password", password);
        return map;
    }

    @RequestMapping(value = {"login", ""}, method = RequestMethod.GET)
    public String login() {
        return "sys/login";
    }

    @RequestMapping(value = {"login"}, method = RequestMethod.POST)
    @ResponseBody
    public Object loginSubmit(String username, String password, Model model) {
        password = passwordEncoder.encode(password);
//        CacheUtils.put(username,password);
        Map<String, Object> result = new HashMap<String, Object>();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        String pwd = service.getPasswordByName(username);
        if (!password.equals(pwd)) {//用户名密码不匹配
            model.addAttribute("error_msg", "UnknownAccountException");
            token.clear();
//            return "sys/login";
            result.put("state", "error");
            result.put("message", "用户名密码不匹配");
            return result;
        }


        token.setRememberMe(true);
        logger.debug("DefaultController.login#token=" + token);
        Subject currentUser = SecurityUtils.getSubject();
        try {
            //在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
            //每个Realm都能在必要时对提交的AuthenticationTokens作出反应
            //所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
            logger.debug("user[" + username + "]do login checking");
            currentUser.login(token);
            logger.debug("user[" + username + "]authentication success");

        } catch (UnknownAccountException uae) {
            logger.debug("user[" + username + "]UnknownAccountException");
            model.addAttribute("error_msg", "UnknownAccountException");
        } catch (IncorrectCredentialsException ice) {
            logger.debug("user[" + username + "]IncorrectCredentialsException");
            model.addAttribute("error_msg", "IncorrectCredentialsException");
        } catch (LockedAccountException lae) {
            logger.debug("user[" + username + "]LockedAccountException");
            model.addAttribute("error_msg", "LockedAccountException");
        } catch (ExcessiveAttemptsException eae) {
            logger.debug("user[" + username + "]ExcessiveAttemptsException");
            model.addAttribute("error_msg", "ExcessiveAttemptsException");
        } catch (AuthenticationException ae) {
            //注意：这个必须放在后面，因为这个异常可以处理所有认证失败的情况
            model.addAttribute("error_msg", "authentication faild");
        }
        //验证是否登录成功
        if (currentUser.isAuthenticated()) {
            logger.debug("user[" + username + "]authentication success");

            LoginUser loginUser = service.getUserByName(username);
            CacheUtils.put("loginUser", loginUser);//缓存

//            return "index";
            result.put("state", "success");
            result.put("message", "登录成功");

            return result;
        }
        token.clear();
//        return "sys/login";
        result.put("state", "error");
        result.put("message", "登录失败");
        return result;
    }

    @RequestMapping("logout")
    public String logout() {
        SecurityUtils.getSubject().logout();
        return "sys/login";
    }
}