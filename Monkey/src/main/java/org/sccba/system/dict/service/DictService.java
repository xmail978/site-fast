package org.sccba.system.dict.service;

import org.sccba.system.dict.dao.DictDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: Monkey
 * @description: 字典表
 * @author: wanghui
 * @create: 2019/1/15
 */
@Service
public class DictService {
    @Resource
    private DictDao dictDao;
}