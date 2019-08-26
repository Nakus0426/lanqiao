package com.lanqiao.store.controller;


import com.lanqiao.store.dao.GuimeiUsersDao;
import com.lanqiao.store.vo.GuimeiUsers;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;


/**
 * @Author 天份
 * @Date 2019/8/8 0008 15:38
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
@Controller
public class UserController {

    @RequestMapping(value = "/text")
    public String test(HttpSession session, HttpServletRequest request){
        String username = request.getParameter("username");
        session.setAttribute("username", username);
        return "/test.jsp";
    }

    @RequestMapping(value = "/user/login")
    public String login(HttpServletRequest request, HttpSession session, GuimeiUsers guimeiUsers){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String name = request.getParameter("loginName");
        String password = request.getParameter("password");

        GuimeiUsers user = new GuimeiUsersDao().login(new GuimeiUsers(name, password));
        if (user != null) {
            session.setAttribute("user", user);
            return "redirect:/index.do";
        }
        return "redirect:/login.jsp";
    }

    @RequestMapping(value = "/user/register")
    public String register(HttpServletRequest request, GuimeiUsers guimeiUsers){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        int i = new GuimeiUsersDao().register(guimeiUsers);
        if (i == 1) {
            return "redirect:/login.jsp";
        }
        return "redirect:/login.jsp";
    }
}
