package com.mmall.vo;

import com.mmall.pojo.Category;

import java.util.List;

/**
 * @author lubiao
 * @createDate 2018年04月05日 下午 12:02:00
 */
public class CategoryListVo {

    private Integer id;
    private Integer parentId;
    private String name;
    private Boolean status;

    private List<Category> categoryList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }
}
