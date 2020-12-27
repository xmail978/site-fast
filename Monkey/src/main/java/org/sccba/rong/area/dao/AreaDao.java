package org.sccba.rong.area.dao;

import java.util.List;
import java.util.Map;

public interface AreaDao {
    List<Map<?,?>> loadProvice();

    List<Map<?,?>> loadCity(String provice);

    List<Map<?,?>> loadArea(String city);
}
