package com.mmall.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lubiao
 * @createDate 2018年03月19日 14:11:00
 */

@Controller
@RequestMapping({"/",""})
public class MainController {

    @RequestMapping("/login")
    public String toLoginpage(){
        return "/user/login";
    }


}
