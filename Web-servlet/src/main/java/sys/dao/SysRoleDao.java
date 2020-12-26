package sys.dao;


import java.sql.Connection;
import java.util.Set;

/**
 * 角色持久化层
 *
 * @author wh
 * @version v1.0
 * @date 2013/4/19 20:24
 */
public class SysRoleDao {
    private static Connection conn = null;
    public static SysRoleDao dao = new SysRoleDao();


    public Set<String> listRoles(String username) {
        return null;
    }
}
