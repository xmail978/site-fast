package sys.dao;


import java.sql.Connection;
import java.util.Set;

/**
 * @author wh
 * @ClassName: SysRoleDao
 * @Author : WH
 * @Date: 2020/4/19 20:24
 * @Version: v1.0
 */
public class SysRoleDao {
    private static Connection conn = null;
    public static SysRoleDao dao = new SysRoleDao();


    public Set<String> listRoles(String userName) {
        return null;
    }
}
