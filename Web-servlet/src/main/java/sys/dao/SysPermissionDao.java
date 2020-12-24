package sys.dao;


import java.sql.Connection;
import java.util.Set;

/**
 * @author wh
 * @ClassName: SysPermissionDao
 * @Author : WH
 * @Date: 2020/4/19 20:24
 * @Version: v1.0
 */
public class SysPermissionDao {
    private static Connection conn = null;
    public static SysPermissionDao dao = new SysPermissionDao();


    public Set<String> listPermissions(String userName) {
        return null;
    }
}
