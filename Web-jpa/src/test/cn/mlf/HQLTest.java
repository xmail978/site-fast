package cn.mlf;

import cn.mlf.entity.TUser;
import common.utils.CommonUtil;
import common.utils.JsonMapper;
import junit.SpringJunit4;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * @ClassName: HQLTest
 * @Author : WH
 * @Date: 2020/5/5 15:44
 * @Description: HQL检索方式 测试  Hibernate Query Language
 * @Version: v1.0
 */
public class HQLTest extends SpringJunit4 {
    @Resource
    private SessionFactory sessionFactory;

    @Test
    public void test1() throws IOException {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //在HQL中form是实体类名，where语句中使用的是持久化对象的属性名
        String hql = "from TUser where userName like '%汤姆%'";
        Query query = session.createQuery(hql);
        List<TUser> list = query.list();
        String result = JsonMapper.getInstance().toJson(list);
        logger.info("用户列表:{}", CommonUtil.jacksonFormat(result));
        session.getTransaction().commit();
    }

    //查询不完整对象
    @Test
    public void test2() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "select userName,password,age,sex from TUser where userName like '%汤姆%'";
        Query query = session.createQuery(hql);
        List<TUser> list = query.list();
        for (Object obj : list) {
            Object[] array = (Object[]) obj;
            System.out.println("用户名:" + array[0]);
            System.out.println("密码:" + array[1]);
            System.out.println("年龄:" + array[2]);
            System.out.println("性别:" + array[3]);
        }
        session.getTransaction().commit();
    }

    //统计和分组查询
    @Test
    public void test3() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "select count(*),max(id) from TUser";
        Query query = session.createQuery(hql);
        List<TUser> list = query.list();
        for (Object obj : list) {
            Object[] array = (Object[]) obj;
            System.out.println("count:" + array[0]);
            System.out.println("max:" + array[1]);
        }
        // 多列数据写法：用Object[]
        Object[] object = (Object[]) query.uniqueResult();
        System.out.println("count:" + object[0]);
        System.out.println("maxId:" + object[1]);
        session.getTransaction().commit();
    }


    //统计和分组查询
    @Test
    public void test4() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "select count(*),max(id),age from TUser group by age";
        Query query = session.createQuery(hql);
        List<Object[]> list = query.list();
        for (Object[] obj : list) {
            System.out.print("count:" + obj[0]);
            System.out.print(",maxId:" + obj[1]);
            System.out.println(",age:" + obj[2]);
        }
    }

    // HQL占位符
    @Test
    public void test5() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = " from TUser where userName = ?";
        Query query = session.createQuery(hql);
        // 索引从0开始
        query.setString(0, "山口百惠");
        List<TUser> list = query.list();
        for (TUser user : list) {
            System.out.println("用户名:" + user.getUserName());
            System.out.println("密码:" + user.getPassword());
            System.out.println("年龄:" + user.getAge());
            System.out.println("性别:" + user.getSex());
        }
        session.getTransaction().commit();
    }

    // HQL引用占位符
    @Test
    public void test6() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = " from TUser where userName = :name";
        Query query = session.createQuery(hql);
        query.setParameter("name", "宫崎骏");
        List<TUser> list = query.list();
        for (TUser user : list) {
            System.out.println("用户名:" + user.getUserName());
            System.out.println("密码:" + user.getPassword());
            System.out.println("年龄:" + user.getAge());
            System.out.println("性别:" + user.getSex());
        }
        session.getTransaction().commit();
    }

    // HQL分页
    @Test
    public void test7() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "from TUser";
        Query query = session.createQuery(hql);
        query.setFirstResult(0);
        query.setMaxResults(10);
        List<TUser> list = query.list();
        for (TUser user : list) {
            System.out.println("查询结果:" + user);
        }
        session.getTransaction().commit();
    }
}
