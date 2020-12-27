package cn.mlf;

import cn.mlf.entity.TUser;
import cn.mlf.service.TUserService;
import common.utils.CommonUtil;
import common.utils.JsonMapper;
import junit.SpringJunit4;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ClassName: JpaTest
 * @Author : WH
 * @Date: 2020/3/20 14:40
 * @Description: hibernate基本方法测试
 * @Version: v1.0
 */
public class JpaTest extends SpringJunit4 {
    @Resource
    private TUserService userService;

    @Test
    public void save() {
        for (int i = 50; i > 0; i--) {
            TUser user = new TUser();
            user.setUserName("汤姆" + i);
            user.setPassword("123456");
            user.setSex(i % 2 == 0 ? 0 : 1);
            user.setBak("我不存数据库");
            userService.save(user);
            logger.info("用户{}保存成功！", JsonMapper.getInstance().toJson(user));
        }
    }

    @Test
    public void getAll() throws Exception {
        List<TUser> list = userService.getAll();
        String result = JsonMapper.getInstance().toJson(list);
//        System.out.println(CommonUtil.jacksonFormat(result));
        logger.info("用户列表{}", CommonUtil.jacksonFormat(result));
    }

    @Test
    public void saveOrUpdate() {
        TUser user = new TUser();
        user.setUserName("杰克");
        user.setPassword("123456");
        user.setSex(1);
        user.setBak("我不存数据库");
        userService.saveOrUpdate(user);
        logger.info("用户{}保存成功！", JsonMapper.getInstance().toJson(user));
    }

    @Test
    public void load() {
        TUser user = userService.load(10);
        logger.info(JsonMapper.getInstance().toJson(user));
    }

    @Test
    public void delete() {
        userService.delete(10);
    }
}
