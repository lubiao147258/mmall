package com.mmall.Controller.portal;

import com.github.pagehelper.PageInfo;
import com.mmall.common.ServerResponse;
import com.mmall.pojo.Category;
import com.mmall.pojo.Product;
import com.mmall.service.ICategoryService;
import com.mmall.service.IProductService;
import com.mmall.vo.CategoryListVo;
import com.mmall.vo.ProductDetailVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author lubiao
 * @createDate 2018年03月30日 下午 02:46:00
 */
@Controller
@RequestMapping("/product/")
public class ProductController {

    @Autowired
    private IProductService iProductService;

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping("detail.do")
    @ResponseBody
    public ServerResponse<ProductDetailVo> detail(Integer productId){
        return iProductService.getProductDetail(productId);
    }

    @RequestMapping("list.do")
    @ResponseBody
    public ServerResponse<PageInfo> list(@RequestParam(value = "keyword",required = false)String keyword,
                                         @RequestParam(value = "categoryId",required = false)Integer categoryId,
                                         @RequestParam(value = "pageNum",defaultValue = "1") int pageNum,
                                         @RequestParam(value = "pageSize",defaultValue = "10") int pageSize,
                                         @RequestParam(value = "orderBy",defaultValue = "") String orderBy){
        return iProductService.getProductByKeywordCategory(keyword,categoryId,pageNum,pageSize,orderBy);
    }

    @RequestMapping("listByCategory")
    public String getListByCategory(@RequestParam(value = "keyword",required = false)String keyword,
                                    @RequestParam(value = "categoryId",required = false)Integer categoryId,
                                    @RequestParam(value = "pageNum",defaultValue = "1") int pageNum,
                                    @RequestParam(value = "pageSize",defaultValue = "10") int pageSize,
                                    @RequestParam(value = "orderBy",defaultValue = "") String orderBy, Model model){

        ServerResponse<PageInfo> productList = iProductService.getProductByKeywordCategory(keyword,categoryId,pageNum,pageSize,orderBy);
        model.addAttribute("productList" , productList.getData());

        //所有分类
        List<CategoryListVo> categoryListVoList = this.iCategoryService.getCategoryAndChildrenCategory();
        model.addAttribute("categoryListVoList", categoryListVoList);

        //当前分类
        Category category = iCategoryService.getCategoryById(categoryId);
        model.addAttribute("category", category);

        //当前分类下的子分类
        List<Category> categoryList = this.iCategoryService.getChildrenParallelCategory(categoryId).getData();
        model.addAttribute("categoryList", categoryList);

        return "/product";
    }

}
