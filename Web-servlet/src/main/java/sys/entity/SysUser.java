package sys.entity;

import java.util.Date;

/**
 * 系统用户 Model
 *
 * @author WH
 * @version 1.0
 * @date 2013/4/19 20:24
 */
public class SysUser {
    private String id;
    private String username;
    private String loginName;
    private String password;
    private char sex;
    /**
     * 身份证
     */
    private String idCard;
    private String phone;
    private String mobile;
    private String email;
    private String createId;
    private Date createTime;
    private Date updateTime;
    private String updateId;
    private char state;
    private String remark;
    private String orgId;
    private String del;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
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

    public String getCreateId() {
        return createId;
    }

    public void setCreateId(String createId) {
        this.createId = createId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public char getState() {
        return state;
    }

    public void setState(char state) {
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
        orgId = orgId;
    }

    public String getDel() {
        return del;
    }

    public void setDel(String del) {
        this.del = del;
    }

    @Override
    public String toString() {
        return "SysUser{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", sex=" + sex +
                ", idCard='" + idCard + '\'' +
                ", phone='" + phone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", email='" + email + '\'' +
                ", createId='" + createId + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", updateId='" + updateId + '\'' +
                ", state=" + state +
                ", remark='" + remark + '\'' +
                ", orgId='" + orgId + '\'' +
                ", del='" + del + '\'' +
                '}';
    }
}
