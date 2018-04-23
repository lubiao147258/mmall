package com.mmall.Controller.backend;

import com.github.pagehelper.PageInfo;
import com.mmall.common.ServerResponse;
import com.mmall.pojo.Category;
import com.mmall.service.ICategoryService;
import com.mmall.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author lubiao
 * @createDate 2018年04月23日 下午 05:32:00
 */
@Controller
@RequestMapping("/manage/childCategory")
public class ChildCategoryManageController {

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping({"","/"})
    public String goChildCategoryPage(@RequestParam(value = "keyword",required = false)String keyword,
                                      @RequestParam(value = "preCategoryId",required = false)Integer preCategoryId,
                                      @RequestParam(value = "pageNum",defaultValue = "1") int pageNum,
                                      @RequestParam(value = "pageSize",defaultValue = "10") int pageSize,
                                      @RequestParam(value = "orderBy",defaultValue = "") String orderBy, Model model){
        System.out.println(preCategoryId);
        List<Category> categoryList = iCategoryService.getChildrenParallelCategory(preCategoryId).getData();
        model.addAttribute("categoryList",categoryList);
        return "/admin/manageChildCategory";
    }
}
