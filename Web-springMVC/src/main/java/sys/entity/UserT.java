package sys.entity;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

/**
 * @ClassName: UserT
 * @Author : WH
 * @Date: 2020/4/18 18:22
 * @Description: 实现数据表与字段的映射
 * @Version: v1.0
 */
public class UserT implements RowMapper<UserT>, Serializable {
    private static final long serialVersionUID = -8823504831198719837L;

    private Integer id;

    private String userName;

    private Integer age;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public UserT mapRow(ResultSet resultSet, int i) throws SQLException {
        UserT userInfo = new UserT();
        userInfo.setId(resultSet.getInt("id"));
        userInfo.setUserName(resultSet.getString("user_name"));
        userInfo.setAge(resultSet.getInt("age"));
        userInfo.setPassword(resultSet.getString("password"));
//        userInfo.setuRegisterTime(resultSet.getDate("uregister_time"));
        return userInfo;
    }
}
