package org.sccba.rong.area.service;

import org.sccba.rong.area.dao.AreaDao;
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
public class AreaService {
    @Resource
    private AreaDao areaDao;

    public List<Map<?,?>> loadProvice() {
        return areaDao.loadProvice();
    }

    public List<Map<?,?>> loadCity(String provice) {
        return areaDao.loadCity(provice);
    }

    public List<Map<?,?>> loadArea(String city) {
        return areaDao.loadArea(city);
    }
}