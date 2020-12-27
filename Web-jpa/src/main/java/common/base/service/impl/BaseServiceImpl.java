package common.base.service.impl;

import common.base.dao.BaseDao;
import common.base.service.BaseService;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;


import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Service层基类实现类。该类是一个抽象类。
 *
 * @param <T>
 * @author WH
 * @version 0.0.1
 * @date 2015年5月6日 下午6:59:53
 */
public abstract class BaseServiceImpl<T> implements BaseService<T> {
    @Resource
    private BaseDao<T> baseDao;

    private Class<T> clazz;

    @SuppressWarnings({"unchecked", "rawtypes"})
    public BaseServiceImpl() {
        // 子类
        Class cla = getClass();
        // 通过子类获取到父类
        // 泛型参数
        Type type = cla.getGenericSuperclass();
        if (type instanceof ParameterizedType) {
            ParameterizedType pType = (ParameterizedType) type;
            clazz = (Class<T>) pType.getActualTypeArguments()[0];
        }
    }

    /*
     * 保存数据
     * @author WH
     * @date 2015年5月6日 下午6:55:23
     * (non-Javadoc)
     * @throws
     * @see cn.mylife.service.user.BaseService#save(java.lang.Object)
     */
    @Override
    public void save(T t) {
        baseDao.save(t);
    }

    /*
     * 根据ID删除数据
     * @author WH
     * @date 2015年5月6日 下午6:56:01
     * (non-Javadoc)
     * @throws
     * @see cn.mylife.service.user.BaseService#delete(java.io.Serializable)
     */
    @Override
    public void delete(Serializable id) {
        baseDao.delete(id, clazz);
    }

    /*
     * 更新数据
     * @author WH
     * @date 2015年5月6日 下午6:56:51
     * (non-Javadoc)
     * @throws
     * @see cn.mylife.service.user.BaseService#update(java.lang.Object)
     */
    @Override
    public void update(T t) {
        baseDao.update(t);
    }

    @Override
    public void saveOrUpdate(T t) {
        baseDao.saveOrUpdate(t);
    }

    /*
     * 根据ID获得数据
     * @author WH
     * @date 2015年5月6日 下午6:57:54
     * (non-Javadoc)
     * @throws
     * @see cn.mylife.service.user.BaseService#get(java.io.Serializable)
     */
    @Override
    public T get(Serializable id) {
        return baseDao.get(id, clazz);
    }

    @Override
    public T load(Serializable id) {
        return baseDao.load(id, clazz);
    }

    /*
     * 获取所有的数据
     * @author WH
     * @date 2015年5月6日 下午6:58:34
     * (non-Javadoc)
     * @throws
     * @see cn.mylife.service.user.BaseService#getAll()
     */
    @Override
    public List<T> getAll() {
        return baseDao.getAll(clazz);
    }

}