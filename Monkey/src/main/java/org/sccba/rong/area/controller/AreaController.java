package org.sccba.rong.area.controller;

import org.sccba.rong.area.service.AreaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/9
 */
@Controller
@RequestMapping("area")
public class AreaController {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private AreaService areaService;


    @RequestMapping(value = {"provice"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?,?>> loadProvice(HttpServletRequest request, Model model) {
        return areaService.loadProvice();
    }

    @RequestMapping(value = {"city"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?,?>> loadCity(HttpServletRequest request, Model model) {
        String provice = request.getParameter("provice");
        return areaService.loadCity(provice);
    }


    @RequestMapping(value = {"area"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?,?>> loadArea(HttpServletRequest request, Model model) {
        String city = request.getParameter("city");
        return areaService.loadArea(city);
    }
}