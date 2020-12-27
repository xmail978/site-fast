package org.sccba.system.login.dao;


import org.sccba.system.login.model.LoginPermission;

import java.util.List;
import java.util.Map;

/**
 * @author: WangHui
 */
public interface PermissionDao {

    List<LoginPermission> getPermissionByRole(Map param);
}