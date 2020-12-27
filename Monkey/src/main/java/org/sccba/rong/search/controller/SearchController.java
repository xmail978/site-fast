package org.sccba.rong.search.controller;

import com.google.common.collect.Maps;
import com.mysql.cj.Session;
import org.sccba.rong.search.service.SearchService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/8
 */
@Controller
@RequestMapping("search")
public class SearchController {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private SearchService searchService;


    /**
     * @desc 返回一级查询页面
     * @author wanghui
     * @date 2019/1/4
     */
    @RequestMapping(value = "/firstSearchPage.html")
    public Object firstSearchPage(HttpServletRequest request, HttpServletResponse respose, Model model) {
        String search = request.getParameter("search");
        model.addAttribute("search", search);
        return "ronge/first";
    }

    /**
     * @desc 返回详情页面
     * @author wanghui
     * @date 2019/1/4
     */
    @RequestMapping(value = "/toDetails.html")
    public Object toDetails(HttpServletRequest request, HttpServletResponse respose, Model model,String id) {
        Map param = Maps.newHashMap();
        param.put("id", id);
        List<Map<?, ?>> list = searchService.searchCompany(param);
        model.addAttribute("companyId", id);//公司ID
        model.addAttribute("company", list.get(0));//公司
        return "ronge/details";
    }

    /**
     * @desc 返回详情数据
     * @author wanghui
     * @date 2019/1/4
     */
    @RequestMapping(value = "/toDetails.do")
    @ResponseBody
    public Object details(HttpServletRequest request, HttpServletResponse respose, Model model, String id) {
        Map param = Maps.newHashMap();
        param.put("id", id);
        List<Map<?, ?>> list = searchService.searchCompany(param);
        return list.get(0);
    }




    /**
     * @param request
     * @param model
     * @return
     * @desc 企业状态列表
     */
    @RequestMapping(value = {"firstSearch"}, method = RequestMethod.POST)
    @ResponseBody
    public List<Map<?, ?>> companyState(HttpServletRequest request, Model model) {
        String search = request.getParameter("search");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String area = request.getParameter("area");
        String industry = request.getParameter("industry");
        String companyType = request.getParameter("companyType");
        String companyState = request.getParameter("companyState");

        Map param = Maps.newHashMap();
        param.put("companyName", search);
        param.put("province", province);
        param.put("city", city);
        param.put("area", area);
        param.put("industry", industry);
        param.put("companyType", companyType);
        param.put("companyState", companyState);

        return searchService.searchCompany(param);
    }

}