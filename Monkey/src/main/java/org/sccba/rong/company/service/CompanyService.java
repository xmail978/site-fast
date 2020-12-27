package org.sccba.rong.company.service;

import org.sccba.rong.company.dao.CompanyDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/9
 */
@Service
public class CompanyService {
    @Resource
    private CompanyDao companyDao;


    public List<Map<?,?>> companyType() {
        return companyDao.companyType();
    }

    public List<Map<?,?>> companyState() {
        return companyDao.companyState();
    }

    public List<Map<?,?>> industryType(Map param) {
        return companyDao.industryType(param);
    }
}