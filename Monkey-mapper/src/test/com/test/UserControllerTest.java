package com.test;


import com.alibaba.fastjson.JSON;
import com.junit.JunitTest;
import com.lje.test.mapper.UserInfoMapper;
import com.lje.test.model.UserInfo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class UserControllerTest extends JunitTest {
    @Autowired
    UserInfoMapper userMapper;

    @Test
    public void testList() {
        List<UserInfo> list = userMapper.selectAll();
        System.out.println(JSON.toJSONString(list));
    }
}
