package org.sccba.system.login.dao;

import org.sccba.system.login.model.LoginRole;

import java.util.List;
import java.util.Map;

/**
 * @author: WangHui
 */
public interface RoleDao {
    List<LoginRole> getRoleByUserName(Map param);
}