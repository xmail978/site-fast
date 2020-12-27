package org.sccba.system.login.dao;

import org.sccba.system.login.model.LoginUser;

import java.util.Map;

/**
 * @author: WangHui
 */
public interface UserDao {
    String getPassword(Map param);

    LoginUser getUserByName(Map param);
}