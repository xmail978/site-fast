package jdbc;

import com.alibaba.fastjson.JSON;
import com.test.dao.UserDAO;
import sys.entity.UserT;
import junit.JunitBoot;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: JdbcTest
 * @Author : WH
 * @Date: 2020/4/18 20:49
 * @Description: jdbc单元测试
 * @Version: v1.0
 */
public class JdbcTest extends JunitBoot {
    @Resource
    private UserDAO userDao;

    @Test
    public void testExecute() {
        logger.info("单元测试打印：JDBC基本方法 : \033[1;35m  {}  \033[0m", "execute执行sql语句");
//        userDao.execute("CREATE TABLE USER (user_id integer, user_name varchar(100))");
        userDao.execute("drop TABLE USER ");
    }

    @Test
    public void testSave() {
        logger.info("单元测试打印：JDBC基本方法 : \033[1;35m  {}  \033[0m", "save方法");
        UserT user = new UserT();
        user.setAge(21);
        user.setPassword("123456");
//        user.setId(21);
//        user.setUserName("赵四");
//        userDao.save(user);

//        user.setId(22);
//        user.setUserName("宋小宝");
//        userDao.insert(user);

        user.setId(23);
        user.setUserName("小沈阳");
        userDao.insertByStatement(user);
    }

    @Test
    public void testUpdate() {
        logger.info("单元测试打印：JDBC基本方法 : \033[1;35m  {}  \033[0m", "update方法");
//        UserT userT = userDao.queryById(1);
//        userT.setUserName("郭德纲");
//        userDao.update(userT);

        UserT userT = userDao.queryById(2);
        userT.setUserName("于谦");
        userDao.modify(userT);
    }


    @Test
    public void testDelete() {
        logger.info("单元测试打印：JDBC基本方法 : \033[1;35m  {}  \033[0m", "delete方法");
        userDao.delete(3);
    }


    @Test
    public void testQuery() {
        logger.info("单元测试打印：JDBC基本方法 : \033[1;35m  {}  \033[0m", "查询方法");
        Long total = userDao.queryTotal();
        System.out.println("单元测试打印:查询总数为： " + total);


        Map<String, Object> userMap = userDao.queryForMap(1);
        System.out.println("单元测试打印:查询ID为1的用户为： " + JSON.toJSONString(userMap));

//        Object obj = userDao.queryForObject(1);
//        System.out.println("单元测试打印:查询ID为1的用户为： "+ JSON.toJSONString(obj));

        List<Map<String, Object>> list = userDao.queryForList(1, "小沈阳");
        System.out.println("单元测试打印:查询ID为1或用户为小沈阳的结果是： " + JSON.toJSONString(list));

        UserT user = userDao.queryById(2);
        System.out.println("单元测试打印:查询ID为2结果是： " + JSON.toJSONString(user));

        List<UserT> all = userDao.queryList();
        System.out.println("单元测试打印:查询所有结果是： " + JSON.toJSONString(all));

        UserT u = new UserT();
        u.setId(4);
        UserT user2 = userDao.queryByRowHandler(u);
        System.out.println("单元测试打印:查询ID为4结果是： " + JSON.toJSONString(user2));

        List li = new ArrayList();
        li.add(1);
        li.add(2);
        li.add(3);
        li.add(4);
        List<UserT> list2 = userDao.queryByIds(li);
        System.out.println("单元测试打印:查询ID为1,2,3,4结果是： " + JSON.toJSONString(list2));


//        userDao.batchUpdate(new String[]{"沈腾", "黄渤"}, new int[]{4, 5});
//        userDao.batchUpdate2(new String[]{ "黄渤", "王宝强"}, new int[]{ 5, 6});
        userDao.batchUpdateByStatement(new String[]{ "巨石强森", "施瓦辛格"}, new int[]{ 5, 6});


        UserT userT = userDao.getById(5);
        System.out.println("单元测试打印:查询ID为5的结果是： " + JSON.toJSONString(userT));

        List<UserT> au = userDao.findAll();
        System.out.println("单元测试打印:查询所有的结果是： " + JSON.toJSONString(au));
    }
}
