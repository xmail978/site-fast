package admin.login;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Table;
import com.jfinal.plugin.activerecord.TableMapping;

import java.util.List;

/**
 * @ClassName: SysService
 * @Author : WH
 * @Date: 2020/4/10 14:21
 * @Description: service
 * @Version: v1.0
 */
public class SysService {
    public static SysService service = new SysService();
    //声明dao
    private UserModel userDao = new UserModel().dao();

    /**
     * @return List<User>
     * @Description 获取所有用户信息
     */
    public List<UserModel> getAllUser() {
//        List<Record> records=Db.find(sql);
        List<UserModel> users = userDao.find("select * from t_use");
        return users;
    }

    /**
     * @Description 删除用户
     */
    public void delUserById(Integer id) {
        userDao.deleteById(id);
    }

    /**
     * @param user
     * @Description 添加用户
     */
    public void addUser(UserModel user) {
        user.save();
    }

    /**
     * @param id
     * @return User
     * @Description 根据id查询用户信息
     */
    public UserModel findUserById(Integer id) {
        UserModel user = userDao.findById(id);
        return user;
    }

    /**
     * @param user
     * @Description 更新用户信息
     */
    public void updateUser(UserModel user) {
        user.update();
    }

    public String[] ajaxSuccess() {
        return new String[]{"code:200", "state:SUCCESS"};
    }


    public String[] ajaxError(String msg) {
        return new String[]{"code:500", "state:FAIL"};
    }

    public List<String> getPermissions(int id) {
        return null;
    }

    public UserModel getByUsername(String username) {
//        List<UserModel> list = userDao.find("select * from t_user where user_name = ?", username);
        List<Object> list = Db.query("select * from t_user where user_name = ?", username);
        Object[] arr = (Object[]) list.get(0);
        UserModel user = new UserModel();
        user.setId((int) arr[0]);
        user.setUserName((String) arr[1]);
        user.setPassword((String) arr[2]);
        user.setAge((int) arr[3]);
        user.setSex((int) arr[4]);
        user.setAddress((String) arr[5]);
        return user;
    }
}
