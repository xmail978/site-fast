package org.sccba.rong.search.service;

import org.sccba.rong.search.dao.SearchDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/8
 */
@Service
public class SearchService {
    @Resource
    private SearchDao searchDao;

    public List<Map<?,?>> searchCompany(Map param) {
        return searchDao.searchCompany(param);
    }
}