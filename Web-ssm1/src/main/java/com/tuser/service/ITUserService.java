package com.tuser.service;

import com.tuser.model.TUser;

import java.util.List;
import java.util.Map;

/**
 * @ClassName: IUserService
 * @Author : WH
 * @Date: 2019/4/28 10:47
 * @Description: ITUserService业务接口
 * @Version v1.0
 */
public interface ITUserService {
    public TUser getUserById(int userId);

    List<Map<String, Object>> testErrMsgService() throws Exception;
}
