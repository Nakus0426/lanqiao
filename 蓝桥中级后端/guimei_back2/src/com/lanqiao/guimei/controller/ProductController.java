package com.lanqiao.guimei.controller;

import com.lanqiao.guimei.dao.ProductDao;

import com.lanqiao.guimei.vo.Category;
import com.lanqiao.guimei.vo.Page;
import com.lanqiao.guimei.vo.Product;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.System.out;

@Controller
public class ProductController {
    Logger logger = Logger.getLogger(ProductController.class);

    @RequestMapping("/page")
    public String findForPage(HttpServletRequest request, HttpSession session){

        String prodName = request.getParameter("prodName");
        String type = request.getParameter("type");
        Product prod = new Product();
        prod.setProdName(prodName);
        prod.setType(type);


        Page<Product> productPage = (Page<Product>) session.getAttribute("productPage");

        ProductDao productDao = new ProductDao();

        String pageNo = request.getParameter("pageNo");

        if (productPage == null || StringUtils.isBlank(pageNo)){
            productPage = new Page<Product>();
            productPage.setPageSize(15);
            productPage.setPageNo(1);
            productPage.setQueryObject(prod);
            // 统计总记录数
            productPage.setTotalRow(productDao.countForPage(productPage));
        } else {
            productPage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("productPage", productPage);

        // 查询列表数据
        List<Product> productList = productDao.findForPage2(productPage);

        request.setAttribute("productList", productList);

     return "/index.jsp";

    }

    @RequestMapping("/manage")
    public String findForPage2(HttpServletRequest request, HttpSession session){

        String prodName = request.getParameter("prodName");
        String type = request.getParameter("type");
        String status = request.getParameter("status");
        Product prod = new Product();
        prod.setProdName(prodName);
        prod.setType(type);
        if (StringUtils.isNoneBlank(status)){
            prod.setStatus(Integer.valueOf(status));
        }




        Page<Product> productPage = (Page<Product>) session.getAttribute("productPage");

        ProductDao productDao = new ProductDao();

        String pageNo = request.getParameter("pageNo");

        if (productPage == null || StringUtils.isBlank(pageNo)){
            productPage = new Page<Product>();
            productPage.setPageSize(15);
            productPage.setPageNo(1);
            productPage.setQueryObject(prod);
            // 统计总记录数
            productPage.setTotalRow(productDao.countForPage(productPage));
        } else {
            productPage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("productPage", productPage);

        // 查询列表数据
        List<Product> productList = productDao.findForPage2(productPage);

        request.setAttribute("productList", productList);

        return "/managePage.jsp";

    }







    @RequestMapping("/insert")
    public String insertProduct(HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {
        String prodNo = request.getParameter("prodNo");
        Integer ctgrId = Integer.valueOf(request.getParameter("ctgrId"));
        Integer stkId = Integer.valueOf(request.getParameter("stkId"));
        Integer venId = Integer.valueOf(request.getParameter("venId"));
        String prodName = request.getParameter("prodName");
        double price = Double.parseDouble(request.getParameter("price"));
        String type = request.getParameter("type");
        String descr = request.getParameter("descr");
        String image = request.getParameter("image");
        String color = request.getParameter("color");

        Map<String, Object> parameterMap = new HashMap<>();
        parameterMap.put("prodNo", prodNo);
        parameterMap.put("ctgrId", ctgrId);
        parameterMap.put("stkId", stkId);
        parameterMap.put("venId", venId);
        parameterMap.put("prodName", prodName);
        parameterMap.put("type", type);
        parameterMap.put("descr", descr);
        parameterMap.put("image", image);
        parameterMap.put("color", color);
        parameterMap.put("price", price);
        Product product1 = new Product();
        BeanUtils.populate(product1, parameterMap);
        out.println(product1);
        ProductDao productDao = new ProductDao();

        boolean insert = productDao.insert(product1);
        if (insert) {
            return "/page.do";
        } else {
            return "/addForm.jsp?result=0";
        }
    }


    @RequestMapping("/update")
    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, IOException {
        String prodNo = request.getParameter("prodNo");
        Integer ctgrId = Integer.valueOf(request.getParameter("ctgrId"));
        Integer stkId = Integer.valueOf(request.getParameter("stkId"));
        Integer venId = Integer.valueOf(request.getParameter("venId"));
        String prodName = request.getParameter("prodName");
        double price = Double.parseDouble(request.getParameter("price"));
        String type = request.getParameter("type");
        String descr = request.getParameter("descr");
        String image = request.getParameter("image");
        String color = request.getParameter("color");
        Map<String, Object> parameterMap = new HashMap<>();
        parameterMap.put("prodNo", prodNo);
        parameterMap.put("ctgrId", ctgrId);
        parameterMap.put("stkId", stkId);
        parameterMap.put("venId", venId);
        parameterMap.put("prodName", prodName);
        parameterMap.put("type", type);
        parameterMap.put("descr", descr);
        parameterMap.put("image", image);
        parameterMap.put("color", color);
        parameterMap.put("price", price);
        Product product1 = new Product();
        BeanUtils.populate(product1, parameterMap);
        out.println(product1);
        ProductDao productDao = new ProductDao();

        boolean updated = productDao.update(product1);

        if (updated) {
            response.getWriter().write("{\"result\": true}");
        } else {
            response.getWriter().write("{\"result\": false}");
        }
    }

    @RequestMapping("/delete")
    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String prodno = request.getParameter("prodno");
        ProductDao productDao = new ProductDao();
        if (StringUtils.isNoneBlank(prodno)) {
            boolean deleted = productDao.delete(prodno);

            if (deleted) {
                response.getWriter().write("{\"result\" : true}");
            } else {
                response.getWriter().write("{\"result\" : false}");
            }
        } else {
            response.getWriter().write("{\"result\" : false}");
        }

    }

    @RequestMapping("/fakeDelete")
    public void fakeDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String prodno = request.getParameter("prodno");
        ProductDao productDao = new ProductDao();
        if (StringUtils.isNoneBlank(prodno)) {
            boolean deleted = productDao.fakeDelete(prodno);

            if (deleted) {
                response.getWriter().write("{\"result\" : true}");
            } else {
                response.getWriter().write("{\"result\" : false}");
            }
        } else {
            response.getWriter().write("{\"result\" : false}");
        }

    }



    @RequestMapping("/onSale")
    public void onSale(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String prodno = request.getParameter("prodno");
        ProductDao productDao = new ProductDao();
        if (StringUtils.isNoneBlank(prodno)) {
            boolean deleted = productDao.onSale(prodno);

            if (deleted) {
                response.getWriter().write("{\"result\" : true}");
            } else {
                response.getWriter().write("{\"result\" : false}");
            }
        } else {
            response.getWriter().write("{\"result\" : false}");
        }

    }






    @RequestMapping("/goods/sort")
    public String queryProduct(HttpServletRequest request, Category category){
        List<Product> goods = new ProductDao().query(category);
        logger.debug("List<Product> goods 为：" + goods);
        request.setAttribute("goods",goods);
        return "/main.jsp";
    }



}