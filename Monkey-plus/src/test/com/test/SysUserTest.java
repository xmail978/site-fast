package com.test;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.jil.controller.SysUserController;
import com.jil.model.SysUser;
import com.jil.service.SysUserService;
import com.junit.JunitTest;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.util.JsonExpectationsHelper;

import java.util.List;

/**
 * @Classname SysUserTest
 * @Description TODO添加描述
 * @Date 2019/10/9 19:48
 * @Created by WH
 */
public class SysUserTest extends JunitTest {
    private Logger logger = Logger.getLogger(this.getClass());
    @Autowired
    private SysUserService userService;
    /**
     * @Description: 列表查询测试
     * @Author: WH
     * @date: 2019/10/9 19:56
     */
    @Test
    public void testList(){
        List<SysUser> userList = userService.selectList(new EntityWrapper<SysUser>());
        logger.info(JSON.toJSON(userList));
    }

    /**
     * @Description: 分页测试
     * @Author: WH
     * @date: 2019/10/9 19:56
     */
    @Test
    public void testPage(){
        int pageNum = 1,pageSize = 2;
        Page<SysUser> page = new Page<SysUser>(pageNum,pageSize);
        Page<SysUser> result = userService.selectPage(page, null);//第二个参数可以传wrapper条件查询
        logger.info(JSON.toJSON(result));

        Page<SysUser> result2 = userService.selectPage(page, null);//第二个参数可以传wrapper条件查询
        logger.info(JSON.toJSON(result2));
    }
}
