package org.sccba.rong.search.dao;

import java.util.List;
import java.util.Map; /**
 * @program: Monkey
 * @description:
 * @author: wanghui
 * @create: 2019/1/8
 */
public interface SearchDao {
    List<Map<?,?>> searchCompany(Map param);
}