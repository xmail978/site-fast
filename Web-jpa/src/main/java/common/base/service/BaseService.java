package common.base.service;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

/**
 * Service层基类，定义通用的增，删，改，查功能接口。
 *
 * @param <T>
 * @author WH
 * @version 0.0.1
 * @date 2015年5月6日 下午5:41:57
 */
public interface BaseService<T> {
    /**
     * 保存数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:42:42
     */
    @Transactional
    public void save(T t);

    /**
     * 删除数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:43:08
     */
    @Transactional
    public void delete(Serializable id);

    /**
     * 更新数据
     *
     * @return void 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:43:19
     */
    @Transactional
    public void update(T t);

    @Transactional
    public void saveOrUpdate(T t);
    /**
     * 根据ID获取数据
     *
     * @return T 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:43:30
     */
    public T get(Serializable id);

    public T load(Serializable id);

    /**
     * 获取所有的数据
     *
     * @return List<T> 返回类型
     * @throws
     * @author WH
     * @date 2015年5月6日 下午5:43:52
     */
    public List<T> getAll();
}