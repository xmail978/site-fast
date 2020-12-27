package cn.mlf.dao;

import common.base.dao.BaseDao;
import cn.mlf.entity.TUser;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Classname UserDao
 * @Description dao
 * @Date 2019/5/7 16:51
 * @Created by WH
 */
@Repository
public class TUserDao extends BaseDao<TUser> {

    public void testDetached() {
        DetachedCriteria criteria = DetachedCriteria.forClass(TUser.class);
        criteria.add(Restrictions.eq("userName", "tom"));
        List result = getHibernateTemplate().findByCriteria(criteria);
        for (Object obj : result) {
            System.out.println(obj);
        }
    }

}
