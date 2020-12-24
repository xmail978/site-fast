package sys.servlet;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @ClassName: LogoutServlet
 * @Author : WH
 * @Date: 2020/4/22 12:47
 * @Description: 注销Servlet
 * @Version: v1.0
 */
@WebServlet(name = "logoutServlet", urlPatterns = "/logout.html")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        //退出跳转到首页
        req.getRequestDispatcher("/login.jsp").forward(req, resp);

    }
}
