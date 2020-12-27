package admin.login;

import com.jfinal.plugin.activerecord.Model;

import java.util.Date;

/**
 * @ClassName: ModelUser
 * @Author : WH
 * @Date: 2020/4/10 14:17
 * @Description:
 * @Version: v1.0
 */
public class UserModel extends Model<UserModel> {
    private int id;
    private String userName;
    private String password;
    private int age;
    private int sex;
    private String nativePlace;//籍贯
    private String email;
    private String phone;
    private String address;//住址详情
    private String unit;//工作单位
    private Date createBy;//注册日期


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String user_name) {
        this.userName = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String native_Place) {
        this.nativePlace = native_Place;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Date getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Date create_By) {
        this.createBy = create_By;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", nativePlace='" + nativePlace + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", unit='" + unit + '\'' +
                ", createBy=" + createBy +
                '}';
    }
}
