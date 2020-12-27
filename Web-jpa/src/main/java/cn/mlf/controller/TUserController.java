package cn.mlf.controller;

import cn.mlf.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tUser")
@Scope("prototype")
public class TUserController {
    @Autowired
    private TUserService userService;

    // http://localhost:80/tUser/index
    @RequestMapping(value = "/index")
    public ModelAndView index() {
        ModelAndView view = new ModelAndView("index");
        System.out.println("-- 访问jsp成功 --");
        return view;
    }
    // http://localhost:80/tUser/ftl
    @RequestMapping(value = "/ftl")
    public String ftl() {
        System.out.println("-- 访问ftl成功 --");
        return "login/login";
    }
}
