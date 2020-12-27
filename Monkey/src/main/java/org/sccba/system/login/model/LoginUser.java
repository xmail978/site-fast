package org.sccba.system.login.model;

import java.util.Date;
import java.util.List;

/**
 * @program: Monkey
 * @description: 登录用户模型
 * @author: WangHui
 * @create: 2019/1/14
 */
public class LoginUser {
    private String id;              //ID
    private String userName;        //用户名
    private String loginName;       //登录名
    private String password;        //密码
    private String sex;             //性别：0女，1男
    private String idCard;          //身份证
    private String phone;           //电话
    private String mobile;          //手机号
    private String email;           //邮箱
    private String creatorId;       //创建者ID
    private Date createTime;        //创建时间
    private String updaterId;       //更新者ID
    private Date updateTime;        //更新时间
    private String state;           //状态
    private String remark;          //备注
    private String orgId;           //机构编号
    private String corporation;     //法人行

    private List<LoginRole> roles; //权限

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(String creatorId) {
        this.creatorId = creatorId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdaterId() {
        return updaterId;
    }

    public void setUpdaterId(String updaterId) {
        this.updaterId = updaterId;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    public String getCorporation() {
        return corporation;
    }

    public void setCorporation(String corporation) {
        this.corporation = corporation;
    }

    public List<LoginRole> getRoles() {
        return roles;
    }

    public void setRoles(List<LoginRole> roles) {
        this.roles = roles;
    }
}