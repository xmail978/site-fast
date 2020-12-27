package cn.mlf;

import cn.mlf.dao.TUserDao;
import cn.mlf.entity.TUser;
import cn.mlf.service.TUserService;
import junit.SpringJunit4;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.*;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ClassName: QBCTest
 * @Author : WH
 * @Date: 2020/5/5 15:45
 * @Description: QBC 检索方式 （Query By Criteria）
 * @Version: v1.0
 */
public class QBCTest extends SpringJunit4 {
    @Resource
    private SessionFactory sessionFactory;
    @Autowired
    private TUserService userService;

    // 查询所有
    @Test
    public void test1() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        List<TUser> list = criteria.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }


    /*
     *       方法名称 对应SQL中的表达式
     *   ----------------------------------------------------------
     *   Restrictions.eq field = value
     *   Restrictions.gt field > value
     *   Restrictions.lt field < value
     *   Restrictions.ge field >= value
     *   Restrictions.le field <= value
     *   Restrictions.between field between value1 and value2
     *   Restrictions.in field in(…)
     *   Restrictions.and and
     *   Restrictions.or or
     *   Restrictions.like field like value
     */

    // 条件查询
    @Test
    public void test2() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.add(Restrictions.eq("userName", "冯提莫"));
        List<TUser> list = criteria.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }


    @Test
    public void test3() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.add(Restrictions.like("userName", "%汤姆%"));
//        criteria.add(Restrictions.eq("id", 111));
//        criteria.add(Restrictions.or(Restrictions.eq("userName", "冯提莫"),Restrictions.eq("userName", "刘诗诗")));
        List<TUser> list = criteria.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }

    //获取唯一记录
    @Test
    public void test4() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.add(Restrictions.eq("id", 111));
        TUser user = (TUser) criteria.uniqueResult();
        System.out.println(user);
        session.getTransaction().commit();
    }

    // 分页
    @Test
    public void test5() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.setFirstResult(0);
        criteria.setMaxResults(15);
        List<TUser> list = criteria.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }

    // 分组与统计
    @Test
    public void test6() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.setProjection(Projections.sum("age"));
        Object obj = criteria.uniqueResult();
        System.out.println(obj);
        session.getTransaction().commit();
    }

    // 多个统计与分组
    @Test
    public void test7() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        ProjectionList projectionList = Projections.projectionList();
        projectionList.add(Projections.sum("id"));
        projectionList.add(Projections.min("id"));
        criteria.setProjection(projectionList);

        // 和HQL一样，单列用Object，多列用Object[]
        Object[] obj = (Object[]) criteria.uniqueResult();
        System.out.println("sum:" + obj[0]);
        System.out.println("min:" + obj[1]);

        session.getTransaction().commit();
    }

    // 多个统计与分组
    @Test
    public void test8() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(TUser.class);
        criteria.addOrder(Order.desc("id"));
        List<TUser> list = criteria.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }

    // 离线(detached)查询
    @Test
    public void test9() {
        userService.testDetached();
    }
}
