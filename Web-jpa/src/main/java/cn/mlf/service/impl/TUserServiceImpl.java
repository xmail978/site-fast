package cn.mlf.service.impl;

import common.base.service.impl.BaseServiceImpl;
import cn.mlf.dao.TUserDao;
import cn.mlf.entity.TUser;
import cn.mlf.service.TUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
//@Transactional(readOnly = true)
public class TUserServiceImpl extends BaseServiceImpl<TUser> implements TUserService {
    @Resource
    private TUserDao userDao;

    public void testDetached() {
        userDao.testDetached();
    }
}