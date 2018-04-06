package com.mmall.Controller;

import com.mmall.common.Const;
import com.mmall.pojo.User;
import com.mmall.service.ICategoryService;
import com.mmall.vo.CategoryListVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * main-controller
 *
 * @author lubiao
 * @createDate 2018年03月19日 14:11:00
 */

@Controller
@RequestMapping({"/", ""})
public class MainController {

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping({"/", ""})
    public String toIndexpage(HttpSession session, Model model) {
        //获取当前登陆的用户信息
        User CURRENT_USER = (User) session.getAttribute(Const.CURRENT_USER);
        model.addAttribute("CURRENT_USER", CURRENT_USER);
        //获取分类信息，获取一级分类以及一级分类下的子类(这里最多有两级分类)
        List<CategoryListVo> categoryListVoList = this.iCategoryService.getCategoryAndChildrenCategory();
        model.addAttribute("categoryListVoList", categoryListVoList);
        return "/index";
    }

    @RequestMapping({"/login", "login"})
    public String toLoginpage() {
        return "/user/login";
    }

    @RequestMapping("/register")
    public String toRegisterPage() {
        return "/user/register";
    }


}
