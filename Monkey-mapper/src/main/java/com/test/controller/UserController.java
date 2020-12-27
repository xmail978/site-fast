package com.test.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.mapper.UserInfoMapper;
import com.test.model.UserInfo;
import common.tk.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Created by xmail978 on 2018/8/1.
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired(required = false)
    UserInfoMapper userMapper;


    @GetMapping("/list")
    public List<UserInfo> getUserMapper() {
        return userMapper.selectAll();
    }

    /**
     * @Description: 按条件分页查询 Example
     * @Author: WH
     * @date: 2019/10/9 15:31
     */
    @GetMapping("/page")
    public PageInfo<UserInfo> page(int pageNum, int pageSize) {
        //设置分页器
        PageHelper.startPage(pageNum, pageSize);
        List<UserInfo> list = this.userMapper.selectAll();
        return new PageInfo<>(list);
    }

    @GetMapping("/page2")
    public PageResult page2(int pageNum, int pageSize) {
        // 创建查询条件
        Example example = new Example(UserInfo.class);
        Example.Criteria criteria = example.createCriteria();
        // 是否模糊查询
        /*if (StringUtils.isNotBlank(key)) {
            criteria.andLike("title", "%" + key + "%");
        }*/

        // 分页,最多允许查100条
        PageHelper.startPage(pageNum, Math.min(pageSize, 100));
        List<UserInfo> list = this.userMapper.selectByExample(example);
        //得到page对象
        Page<UserInfo> pageInfo = (Page<UserInfo>) list;
        //封装为pageResult对象
        return new PageResult<>(pageInfo.getTotal(), pageInfo.getResult());
    }

    /**
     * @Description: 条件查询 Example
     * @Author: WH
     * @date: 2019/10/9 15:31
     */
    @GetMapping("/find")
    public List<UserInfo> find() {
        Example userExample = new Example(UserInfo.class);
        userExample.createCriteria().andEqualTo("id", "1");
        return userMapper.selectByExample(userExample);
    }
}
