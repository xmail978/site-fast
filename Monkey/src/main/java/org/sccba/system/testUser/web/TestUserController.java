package org.sccba.system.testUser.web;

import com.github.pagehelper.PageInfo;
import org.sccba.system.testUser.entity.User;
import org.sccba.system.testUser.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


/**
 * @author WH
 * @ClassName: TestUserController
 * @Description: Controller
 * @date 2019-3-07 上午11:09:32
 */
@Controller
@RequestMapping("/testUser")
public class TestUserController {
    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/showname", method = RequestMethod.GET)
    public String showUserName(@RequestParam("uid") int uid, HttpServletRequest request, Model model) {
        System.out.println("showname");
        log.info("showname");

        User user = userService.getUserById(uid);
        if (user != null) {
            request.setAttribute("name", user.getUserName());
            model.addAttribute("mame", user.getUserName());
            return "showName";
        }
        request.setAttribute("error", "没有找到该用户！");
        return "error";
    }

    @RequestMapping(value = "/findUserById", method = RequestMethod.GET)
    public String findUserById(@RequestParam("uid") int uid, HttpServletRequest request, Model model) {
        System.out.println("showname");
        log.info("showname");

        User user = userService.findUserById(uid);
        if (user != null) {
            request.setAttribute("name", user.getUserName());
            model.addAttribute("mame", user.getUserName());
            return "showName";
        }
        request.setAttribute("error", "没有找到该用户！");
        return "error";
    }

    @RequestMapping(value = "/page")
    @ResponseBody
    public PageInfo<User> page(HttpServletRequest request, Model model) {
        PageInfo<User> page = userService.selectByPage(1, 10);
        return page;
    }
}