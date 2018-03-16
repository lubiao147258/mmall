package com.mmall.service;

import com.mmall.common.ServerResponse;
import com.mmall.pojo.Category;

import java.util.List;

/**
 * @author lubiao
 * @createDate 2018年03月16日 15:52:00
 */
public interface ICategoryService {

    //添加分类
    ServerResponse addCategory(String categoryName, Integer parentId);

    //修改分类的名称
    ServerResponse updateCategoryName(Integer categoryId,String categoryName);

    //获得该分类下的所有子分类
    ServerResponse<List<Category>> getChildrenParallelCategory(Integer categoryId);

    //递归查询本节点的id及孩子节点的id
    ServerResponse<List<Integer>> selectCategoryAndChildrenById(Integer categoryId);

}
