package org.sccba.system.login.model;

import java.util.Date;

/**
 * @program: Monkey
 * @description:登录权限模型
 * @author: WangHui
 * @create: 2019/1/14
 */
public class LoginPermission {

    private String id;              //ID
    private String name;            //名称
    private String code;            //编码
    private String parentId;        //父级ID
    private String url;             //URL地址
    private String iconCls;         //图标
    private String type;            //类型 ，m:菜单，b:按钮
//    private String page;            //页面
    private String creatorId;       //创建者ID
    private Date   createTime;        //创建时间
    private String updaterId;       //更新者ID
    private Date   updateTime;        //更新时间
    private String state;           //状态，0不启用，1启用
    private String remark;          //备注

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

//    public String getPage() {
//        return page;
//    }

//    public void setPage(String page) {
//        this.page = page;
//    }

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
}