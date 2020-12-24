package com.test.controller;

import com.test.service.TestService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/testServlet")
public class TestServlet extends HttpServlet {
    // 初始化service
    //    TestService testService = new TestService();

    TestService testService;
    public void init() {
        // 初始化service
        testService = new TestService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("方法测试。。。");
        // request.setCharacterEncoding("utf-8");
        // response.setContentType("text/html;charset=utf-8");
        // response.getWriter().write("json数据");

        // 转发
        // request.getRequestDispatcher("/index.jsp").forward(request,response);

        // 重定向
        response.sendRedirect("/index.jsp");
    }


}

