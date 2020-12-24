package common;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import net.sf.cglib.beans.BeanMap;

import java.util.List;
import java.util.Map;

/**
 * cglib的BeanMap方法实现bean与map互转使用了缓存效率高
 *
 * @Author: WH
 * @Date: 2020/4/19 16:44
 * @Version: v1.0
 */
public class CglibBeanUtil {
    /**
     * 将对象装换为map
     *
     * @param bean
     */
    public static <T> Map<String, Object> bean2Map(T bean) {
        Map<String, Object> map = Maps.newHashMap();
        if (bean != null) {
            BeanMap beanMap = BeanMap.create(bean);
            for (Object key : beanMap.keySet()) {
                map.put(key + "", beanMap.get(key));
            }
        }
        return map;
    }

    /**
     * 将map装换为javabean对象
     *
     * @param map
     * @param bean
     * @return T
     */
    public static <T> T map2Bean(Map<String, Object> map, T bean) {
        BeanMap beanMap = BeanMap.create(bean);
        beanMap.putAll(map);
        return bean;
    }

    /**
     * 将List<T>转换为List<Map<String, Object>>
     *
     * @param objList
     * @return list
     */
    public static <T> List<Map<String, Object>> objects2Maps(List<T> objList) {
        List<Map<String, Object>> list = Lists.newArrayList();
        if (objList != null && objList.size() > 0) {
            Map<String, Object> map = null;
            T bean = null;
            for (int i = 0, size = objList.size(); i < size; i++) {
                bean = objList.get(i);
                map = bean2Map(bean);
                list.add(map);
            }
        }
        return list;
    }

    /**
     * 将List<Map < String, Object>>转换为List<T>
     *
     * @param maps
     * @param clazz
     * @return
     * @throws InstantiationException
     * @throws IllegalAccessException
     */
    public static <T> List<T> maps2Objects(List<Map<String, Object>> maps, Class<T> clazz) throws InstantiationException, IllegalAccessException {
        List<T> list = Lists.newArrayList();
        if (maps != null && maps.size() > 0) {
            Map<String, Object> map = null;
            T bean = null;
            for (int i = 0, size = maps.size(); i < size; i++) {
                map = maps.get(i);
                bean = clazz.newInstance();
                map2Bean(map, bean);
                list.add(bean);
            }
        }
        return list;
    }
}
