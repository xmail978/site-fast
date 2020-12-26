package sys.dao;


import java.sql.Connection;
import java.util.Set;

/**
 * 权限持久化层
 *
 * @author wh
 * @version v1.0
 * @date 2013/4/19 20:24
 */
public class SysPermissionDao {
    private static Connection conn = null;
    public static SysPermissionDao dao = new SysPermissionDao();


    public Set<String> listPermissions(String userName) {
        return null;
    }
}
