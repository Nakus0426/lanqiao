<%@ page import="com.lanqiao.dao.bookDao" %>
<%@ page import="com.lanqiao.dao.userDao" %>
<%@ page import="com.lanqiao.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/4 0004
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String mobilePhone = request.getParameter("mobilePhone");
    String company = request.getParameter("company");
    String comPhone = request.getParameter("comPhone");
    String comAddress = request.getParameter("comAddress");
    Integer relation = Integer.valueOf(request.getParameter("relation"));
    userDao userDao = new userDao();
    String userId = userDao.selectUserId((String) session.getAttribute("username"));

    bookDao bookDao = new bookDao();
    boolean addContact = bookDao.addContact(new Book(null, name, sex, phone, address, mobilePhone, company, comPhone, comAddress, relation, userId));

    if (addContact){
        out.write("{\"result\": true}");
    }else{
        out.write("{\"result\": false}");
    }
%>
