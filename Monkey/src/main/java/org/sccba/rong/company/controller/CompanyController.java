package org.sccba.rong.company.controller;


import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;
import org.sccba.rong.company.service.CompanyService;
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
@RequestMapping("company")
public class CompanyController {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private CompanyService companyService;

    /**
     * @param request
     * @param model
     * @return
     * @desc 企业类型列表
     */
    @RequestMapping(value = {"companyType"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?, ?>> companyType(HttpServletRequest request, Model model) {
        return companyService.companyType();
    }

    /**
     * @param request
     * @param model
     * @return
     * @desc 企业状态列表
     */
    @RequestMapping(value = {"companyState"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?, ?>> companyState(HttpServletRequest request, Model model) {
        return companyService.companyState();
    }

    /**
     * @param request
     * @param model
     * @return
     * @desc 行业类型列表
     */
    @RequestMapping(value = {"industryType"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?, ?>> industryType(HttpServletRequest request, Model model) {

        String parantId = request.getParameter("parantId");
        String level = request.getParameter("level");
        Map param = Maps.newHashMap();
        if (StringUtils.isEmpty(parantId)) {
            level = "1";//默认层级为第一级
            parantId = "0";//默认父ID为0
        }
        param.put("level", level);
        param.put("parantId", parantId);
        return companyService.industryType(param);
    }

}