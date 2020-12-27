package admin.login;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 * @ClassName: LoginController
 * @Author : WH
 * @Date: 2020/4/10 13:05
 * @Description: 登录注销Controller
 * @Version: v1.0
 */
public class LoginController extends Controller {
    //注入Service
    @Inject
    SysService sysService;

    //默认路径，并返 login.html
    public void index() {
        render("login.html");
    }

    public void login() {
        try { /*if(Boolean.FALSE.equals(validateCaptcha("captcha"))){
            renderJson(sysService.ajaxError("验证码错误"));
            return;
        }*/
            String username = getPara("userName");
//            String password = HashKit.md5(getPara("password"));
            String password = getPara("password");

            Subject currentUser = SecurityUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            currentUser.login(token);
            renderJson(sysService.ajaxSuccess());
        } catch (AuthenticationException e) {
            e.printStackTrace();
            //虽然在realm中有具体的错误信息，但是安全起见，统一返回登录失败
            renderJson(sysService.ajaxError("登陆失败"));
        }
    }

    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        redirect("/passport/login");
    }
}