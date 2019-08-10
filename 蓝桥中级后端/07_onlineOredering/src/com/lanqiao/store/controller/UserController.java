package com.lanqiao.store.controller;

import com.lanqiao.store.dao.UserDao;
import com.lanqiao.store.vo.Users;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/user/login")
    public String login(HttpSession session,Users user) {
        Users login = new UserDao().login(user);
        if(login !=null){
            session.setAttribute("loginUser", login);
            return "redirect:/user/food.do";
        }else {
            return "redirect:/index.jsp";
        }

    }
}
