package com.demo.controller;

import admin.login.UserModel;
import com.demo.service.HelloService;
import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;

import java.util.List;

/**
 * @ClassName: HelloController
 * @Author : WH
 * @Date: 2020/4/10 13:05
 * @Description:
 * @Version: v1.0
 */
public class HelloController extends Controller {
    //注入Service
    @Inject
    HelloService helloService;


    //默认路径，查询所有用户信息并返回值user.html
    public void index() {
        List<UserModel> users = helloService.getAllUser();
        setAttr("users", users);
        render("user.html");
    }

    //删除用户
    public void del() {
        Integer id = getParaToInt("id");
        helloService.delUserById(id);
        redirect301("/hello");
    }

    //前往添加用户页面
    public void toAdd() {
        render("add.html");
    }

    //添加用户
    public void addUser() {
        UserModel user = getModel(UserModel.class);
        helloService.addUser(user);
        redirect301("/hello");
    }

    //根据id查询用户信息并前往至编辑页面
    public void toEdit() {
        Integer id = getParaToInt("id");
        UserModel user = helloService.findUserById(id);
        setAttr("user", user);
        render("edit.html");
    }

    //更新用户信息
    public void updateUser() {
        UserModel user = getModel(UserModel.class);
        helloService.updateUser(user);
        redirect301("/hello");
    }
}