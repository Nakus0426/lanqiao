package com.lanqiao.store.filter;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 安全认证过滤，检查用户是否已登录
 *
 * @author 张建平 on 2019/8/12.
 */
public class SecureFilter extends HttpServlet implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    /**
     * 过滤操作，过滤用户请求
     *
     * @param servletRequest
     * @param servletResponse
     * @param chain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        // 检查用户是否已登录
        // HttpSession中存在用户的登录信息
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();

        // 用户已登录信息
        if (session.getAttribute("user") != null) {
            chain.doFilter(request, response);
        } else {
            // 用户未登录信息
            String requestURI = request.getRequestURI();
            // 请求路径为购物车时需要登录
            if (StringUtils.endsWith(requestURI, "cart.jsp")) {
                response.sendRedirect(request.getContextPath() + "/login.jsp?nolog=0");
            } else{
                // 其他请求路径通过
                chain.doFilter(request, response);
            }
        }
    }
}
