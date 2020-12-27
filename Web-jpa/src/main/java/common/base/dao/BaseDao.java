package common.base.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * dao层基类，实现增，删，改，查等常用功能。
 *
 * @param <T>
 * @author WH
 * @version 0.0.1
 * @date 2015年5月6日 下午5:24:08
 */
@Repository
public class BaseDao<T> extends HibernateDaoSupport {
    @Resource
    private SessionFactory sessionFactory;

    /**
     * 保存数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:24:54
     */
    public void save(T t) {
        sessionFactory.getCurrentSession().save(t);
    }

    /**
     * 删除数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:26:41
     */
    public void delete(Serializable id, Class<T> clazz) {
        T t = get(id, clazz);
        if (t != null)
            sessionFactory.getCurrentSession().delete(t);
        else
            new RuntimeException("你要删除的数据不存在").printStackTrace();
        ;
    }

    /**
     * 更新数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:29:13
     */
    public void update(T t) {
        sessionFactory.getCurrentSession().update(t);
    }

    public void saveOrUpdate(T t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
    }

    /**
     * 根据ID查找数据
     *
     * @return T 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:29:46
     */
    //get方法检索不到的话会返回null
    @SuppressWarnings("unchecked")
    public T get(Serializable id, Class<T> clazz) {
        return (T) sessionFactory.getCurrentSession().get(clazz, id);
    }


    //先查缓存，查不到看是否是延迟加载，不是延迟加载查数据库 查询不到数据回抛异常
    public T load(Serializable id, Class<T> clazz) {
        return (T) sessionFactory.getCurrentSession().load(clazz, id);
    }

    /**
     * 查找所有数据
     *
     * @return List<T> 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:30:16
     */
    @SuppressWarnings("unchecked")
    public List<T> getAll(Class<T> clazz) {
//        return sessionFactory.getCurrentSession().createQuery(clazz.toString()).list();
        return sessionFactory.getCurrentSession().createQuery(" from " + clazz.toString().replace("class", "")).list();
    }


}