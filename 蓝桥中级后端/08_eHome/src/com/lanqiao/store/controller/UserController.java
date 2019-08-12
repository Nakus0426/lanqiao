package com.lanqiao.store.controller;

import com.lanqiao.store.dao.UserDao;
import com.lanqiao.store.vo.Users;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/user/login")
    public String login(HttpSession session,Users user) {
        Users login = new UserDao().login(user);
        if(login !=null){
            session.setAttribute("user", login);
            return "redirect:/index.jsp";
        }else {
            return "redirect:/index.jsp";
        }
    }
}
