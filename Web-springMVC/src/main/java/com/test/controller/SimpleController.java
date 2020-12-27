package com.test.controller;

import com.test.dao.UserDAO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author WH
 * @ClassName: SimpleController
 * @Description: 页面控制类
 * @date 2019-3-06 下午16:44:57
 */
@RestController
@RequestMapping("/")
public class SimpleController {
    @Resource
    private UserDAO userDao;

    @RequestMapping(value = "/t_index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "hello", method = RequestMethod.GET)
//	@ResponseBody
    public String helloWorld(@RequestParam(value = "user", required = false, defaultValue = "World") String userName) {
        return "Hello " + userName + " !";
    }

    @RequestMapping(value = "helloMap", method = RequestMethod.GET)
//	@ResponseBody
    public Map<String, String> helloMap(@RequestParam(value = "user", required = false, defaultValue = "World") String userName) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("hello", userName);
        return map;
    }

    @RequestMapping(value = "/sayHello", produces = "text/html;charset=UTF-8")
    public String testSay() {
        return "你好(hello) :springMVC";
    }

}
