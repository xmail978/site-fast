package cn.mlf;

import cn.mlf.dao.TUserDao;
import cn.mlf.entity.TUser;
import junit.SpringJunit4;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * @ClassName: SQLTest
 * @Author : WH
 * @Date: 2020/5/5 15:44
 * @Description: SQL检索方式 测试 Structured Query Language
 * @Version: v1.0
 */
public class SQLTest extends SpringJunit4 {
    @Resource
    private SessionFactory sessionFactory;
    @Resource
    private TUserDao userDao;

    @Test
    public void test1() throws IOException {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //在HQL中form是实体类名，where语句中使用的是持久化对象的属性名
        String sql = "select id,user_name,age,password,sex,native_place,email,phone,address,unit,create_by from user_t";
        Query query = session.createSQLQuery(sql);
        List list = query.list();
        for (Object item : list) {
            Object[] rows = (Object[]) item;
            System.out.println("id:" + rows[0] + ",userName:" + rows[1] + ",age:" + rows[2] + ",password:" + rows[3]);
        }
        session.getTransaction().commit();
    }

    // 封装成实体类
    @Test
    public void test2() throws IOException {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //在HQL中form是实体类名，where语句中使用的是持久化对象的属性名
        String sql = "select id,user_name,age,password,sex,native_place,email,phone,address,unit,create_by from user_t";
        // addEntity()可以告诉Hibernate你想要封装成对象的类型，然后自动为你封装
        SQLQuery query = session.createSQLQuery(sql).addEntity(TUser.class);
        List<TUser> list = query.list();
        for (TUser user : list) {
            System.out.println(user);
        }
        session.getTransaction().commit();
    }


    // uniqueResult
    @Test
    public void test3() throws IOException {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //在HQL中form是实体类名，where语句中使用的是持久化对象的属性名
        String sql = "select id,user_name,age,password,sex,native_place,email,phone,address,unit,create_by from user_t where id = 2";
        // addEntity()可以告诉Hibernate你想要封装成对象的类型，然后自动为你封装
        SQLQuery query = session.createSQLQuery(sql).addEntity(TUser.class);
        TUser user = (TUser) query.uniqueResult();
        System.out.println(user);
        session.getTransaction().commit();
    }


    //分页
//sql.append(" LIMIT "
//        + (page.getPageNo() * page.getPageSize() - page.getPageSize() < 0 ? 0 : page.getPageNo()* page.getPageSize() - page.getPageSize()) //当前页
//            + "," + page.getPageSize())//每页页数
}
