package org.sccba.system.login.model;

import java.util.Date;
import java.util.List;

/**
 * @program: Monkey
 * @description:登录角色模型
 * @author: WangHui
 * @create: 2019/1/14
 */
public class LoginRole {
    private String roleId;              //角色ID
    private String roleName;            //角色名称
    private String state;               //状态：0：不启用，1启用
    private String remark;              //备注
    private String corporation;         //法人行
    private String createId;            //创建ID
    private Date createTime;            //创建时间
    private String updaterId;           //更新ID
    private Date updateTime;            //更新时间
    private String special;             //特殊说明

    private List<LoginPermission> permissions; //权限

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
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

    public String getCorporation() {
        return corporation;
    }

    public void setCorporation(String corporation) {
        this.corporation = corporation;
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

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special;
    }

    public List<LoginPermission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<LoginPermission> permissions) {
        this.permissions = permissions;
    }
}