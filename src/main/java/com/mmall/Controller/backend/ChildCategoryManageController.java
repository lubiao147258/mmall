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
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String goChildCategoryPage(@RequestParam(value = "categoryName",required = false)String categoryName,
                                      @RequestParam(value = "preCategoryId",required = false)Integer preCategoryId,
                                      @RequestParam(value = "status",required = false)Integer status,
                                      @RequestParam(value = "pageNum",defaultValue = "1") int pageNum,
                                      @RequestParam(value = "pageSize",defaultValue = "10") int pageSize,Model model){
        System.out.println(preCategoryId);
        ServerResponse<PageInfo> page  = iCategoryService.selectCategoryByKeys(categoryName,preCategoryId,status,pageNum,pageSize);
        Category category = iCategoryService.getCategoryById(preCategoryId);
        model.addAttribute("category",category);
        model.addAttribute("page",page.getData());
        model.addAttribute("categoryName",categoryName);
        model.addAttribute("preCategoryId",preCategoryId);
        model.addAttribute("status",status);
        return "/admin/manageChildCategory";
    }
}
