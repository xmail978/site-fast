package com.test.controller;

import com.test.service.TestService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet视图层
 *
 * @author WH
 * @version 1.0
 * @date 2013/08/23 20:38
 */
@WebServlet("/testServlet")
public class TestServlet extends HttpServlet {

    private TestService testService;

    @Override
    public void init() {
        // 初始化service
        testService = new TestService();
    }

    /**
     * 处理get请求
     *
     * @author WH
     * @date 2013/08/23 20:40
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 转到post请求处理
        doPost(request, response);
    }

    /**
     * 处理post请求
     *
     * 返回数据：<br/>
     *      request.setCharacterEncoding("utf-8");
     *      response.setContentType("text/html;charset=utf-8");
     *      response.getWriter().write("json数据");
     * 转发页面：<br/>
     *      request.getRequestDispatcher("/index.jsp").forward(request,response);
     * 重定向页面：<br/>
     *      response.sendRedirect("/index.jsp");
     *
     * @author WH
     * @date 2013/08/23 20:40
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int result = testService.add(3, 5);
        System.out.println("方法测试。。。" + result);

        /*
         * request.setCharacterEncoding("utf-8");
         * response.setContentType("text/html;charset=utf-8");
         * response.getWriter().write("json数据");
         */

        /*
         * // 转发
         * request.getRequestDispatcher("/index.jsp").forward(request,response);
         */

        // 重定向
        response.sendRedirect("/index.jsp");
    }


}

