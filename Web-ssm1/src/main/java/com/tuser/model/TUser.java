package com.tuser.model;

/**
 * @ClassName: TUser
 * @Author : WH
 * @Date: 2019/4/28 10:21
 * @Description: TUser模型
 * @Version v1.0
 */
public class TUser {
    private Integer id;
    private String userName;
    private String password;
    private Integer age;


    private String addtr;

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
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddtr() {
        return addtr;
    }

    public void setAddtr(String addtr) {
        this.addtr = addtr;
    }

    @Override
    public String toString() {
        return "TUser [id=" + id + ", userName=" + userName + ", password="
                + password + ", age=" + age + "]";
    }


}
