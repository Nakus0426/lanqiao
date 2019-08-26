package com.lanqiao.store.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author 天份
 * @Date 2019/8/8 0008 10:07
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class LoginUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String name = req.getParameter("username");
        String password = req.getParameter("password");
        resp.getWriter().write("帐号：" + name);
        resp.getWriter().write("密码：" + password);

    }
}
