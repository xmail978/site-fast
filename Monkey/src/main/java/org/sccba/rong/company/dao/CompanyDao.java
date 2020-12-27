package org.sccba.rong.company.dao;

import java.util.List;
import java.util.Map;

public interface CompanyDao {

    List<Map<?,?>> companyType();

    List<Map<?,?>> companyState();

    List<Map<?,?>> industryType(Map param);
}
