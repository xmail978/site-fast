package org.sccba.system.dict.dao;

import java.util.List;
import java.util.Map;
/**
 * @author: WangHui
 */
public interface DictDao {
    List<Map<?,?>> selectDictGroup(Map param);
}
