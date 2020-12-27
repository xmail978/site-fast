package cn.mlf.service;

import common.base.service.BaseService;
import cn.mlf.entity.TUser;

/**
 * @Classname TUserService
 * @Description Service
 * @Date 2019/4/29 17:53
 * @Created by WH
 */
public interface TUserService extends BaseService<TUser> {
    void testDetached();
}
