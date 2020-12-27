package cn.mlf.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @author WH
 * @version 0.0.1
 * @Description: 用户User实体类
 * @date 2015年5月6日 上午11:24:24
 */
@Entity
@Table(name = "dict_t")
public class TDict implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;          //ID
    private String name;        //名称
    private String code;        //编码
    private String desc;        //描述
    private String order;       //排序

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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }
}