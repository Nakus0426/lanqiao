package com.lanqiao.food.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author 天份
 * @Date 2019/8/12 0012 16:41
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
@WebServlet(name = "ServletTest", value = {"/helloworld", "/servlet/hello"})
public class ServletTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
