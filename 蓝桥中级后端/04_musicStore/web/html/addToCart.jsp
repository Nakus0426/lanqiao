<%@ page import="com.com.lanqiao.dao.CdDiscDao" %>
<%@ page import="com.com.lanqiao.entity.CartItem" %>
<%@ page import="com.com.lanqiao.entity.CdDisc" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/2 0002
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String discNo = request.getParameter("discNo");

    CdDisc disc = new CdDiscDao().findByNo(discNo);

    Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
    if (cart == null) {
        cart = new LinkedHashMap<>();
        cart.put(discNo, new CartItem(disc, 1));
    } else {
        if (!cart.containsKey(discNo)) {
            cart.put(discNo, new CartItem(disc, 1));
        } else {
            CartItem cartItem = cart.get(discNo);
            cartItem.setQuantity(cartItem.getQuantity() + 1);
        }
    }

    session.setAttribute("cart",cart);

    response.sendRedirect(request.getContextPath()+"/html/showCart.jsp");
%>
