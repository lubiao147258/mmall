package com.mmall.Controller;

import com.mmall.common.Const;
import com.mmall.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * main-controller
 *
 * @author lubiao
 * @createDate 2018年03月19日 14:11:00
 */

@Controller
@RequestMapping({"/", ""})
public class MainController {

    @RequestMapping({"/", ""})
    public String toIndexpage(HttpSession session, Model model) {
        User CURRENT_USER = (User) session.getAttribute(Const.CURRENT_USER);
        model.addAttribute("CURRENT_USER", CURRENT_USER);
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
