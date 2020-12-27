package org.sccba.rong.detail.service;

import org.sccba.rong.detail.dao.DetailDao;
import org.sccba.system.dict.dao.DictDao;
import org.sccba.system.login.model.LoginUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/15
 */
@Service
public class DetailService {
    @Resource
    private DetailDao detailDao;

    @Resource
    private DictDao dictDao;

    /*public List<Map<?,?>> middleMenu(Map param) {
        return dictDao.selectDictGroup(param);
    }*/
}