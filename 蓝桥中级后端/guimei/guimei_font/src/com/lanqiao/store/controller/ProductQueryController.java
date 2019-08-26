package com.lanqiao.store.controller;

import com.lanqiao.store.dao.ProductQueryDao;
import com.lanqiao.store.dao.TradeTnfoDao;
import com.lanqiao.store.vo.*;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.*;

@Controller
public class ProductQueryController {
    Logger logger = Logger.getLogger(ProductQueryController.class);

    @RequestMapping("/goods/sort")
    public String queryProduct(HttpServletRequest request, HttpSession session,Category category){
        Page<Category> productPage = (Page<Category>) session.getAttribute("productPage");
        String pageNo = request.getParameter("pageNo");
        Integer bigCtgrId = category.getBigCtgrId();
        Integer ctgrId = category.getCtgrId();
        int stat = 40;
        if (bigCtgrId != null){
            switch (bigCtgrId){
                case 10:
                    stat = 10;
                    break;
                case 20:
                    stat = 20;
                    break;
                case 30:
                    stat = 30;
                    break;
                default:
                    stat = 40;
                    break;
            }
        }
        if (ctgrId != null){
            switch (ctgrId/10){
                case 10:
                    stat = 10;
                    break;
                case 20:
                    stat = 20;
                    break;
                case 30:
                    stat = 30;
                    break;
                default:
                    stat = 40;
                    break;
            }
        }
        request.setAttribute("stat", stat);
        ProductQueryDao productDao = new ProductQueryDao();
        if (productPage == null || StringUtils.isBlank(pageNo)){
            productPage = new Page<Category>();
            productPage.setPageSize(Page.R8);
            productPage.setPageNo(1);
            productPage.setQueryObject(category);
            productPage.setTotalRow(productDao.queryCountForPageByCate(category));
        }else {
            productPage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("productPage",productPage);

        List<Product> goodsList = productDao.query(productPage);
        logger.debug("List<Product> goods 为：" + goodsList);
        request.setAttribute("goodsList",goodsList);
        return "/list.jsp";
    }

    @RequestMapping("/goods/addToCart")
    public Map addToCart(HttpServletRequest request, HttpSession session,Product product){
        Product product1 = new ProductQueryDao().queryByNo(product);
        Integer quantity = Integer.valueOf(request.getParameter("quantity"));
        logger.debug("prodNo"+product1.getProdNo()+" ,quantity"+quantity);
        //在这里set的totalPrice是单件商品的总价,用来处理立即结算
        Double totalPrice = product1.getPrice()*quantity;
        DecimalFormat df = new DecimalFormat("0.00");
        session.setAttribute("totalPrice",df.format(totalPrice));

        Map<String, CartItem> cart = (Map<String, CartItem>)session.getAttribute("cart");
        if (cart == null) {
            cart = new LinkedHashMap<>();
            cart.put(product1.getProdNo(), new CartItem(product1, quantity));
        } else {
            if(cart.containsKey(product1.getProdNo())){
                CartItem cartItem = cart.get(product1.getProdNo());
                cartItem.setQuantity(cartItem.getQuantity() + quantity);
                cart.put(product1.getProdNo(), cartItem);
            } else {
                cart.put(product1.getProdNo(), new CartItem(product1, quantity));
            }
        }

        session.setAttribute("cart", cart);
        logger.debug("cartCount"+cart.size());
        session.setAttribute("cartCount", cart.size());
        Map json = new HashMap();
        json.put("result", true);
        return json;
    }

    @RequestMapping("/index")
    public String goodsInit(HttpSession session){
        Category sofa = new Category(null,null,"沙发",null);
        Category bed = new Category(null,null,"床",null);

        Page<Category> sofaPage = new Page<>();
        sofaPage.setPageSize(Page.R8);
        sofaPage.setPageNo(1);
        sofaPage.setQueryObject(sofa);

        Page<Category> bedPage = new Page<>();
        bedPage.setPageSize(Page.R8);
        bedPage.setPageNo(1);
        bedPage.setQueryObject(bed);

        List<Product> sofaList = new ProductQueryDao().query(sofaPage);
        List<Product> bedList = new ProductQueryDao().query(bedPage);

        session.setAttribute("sofaList",sofaList);
        session.setAttribute("bedList",bedList);

        return "/index.jsp";
    }

    @RequestMapping("/goods/queryByNo")
    public String findById(HttpServletRequest request,Product product){
        Product product1 = new ProductQueryDao().queryByNo(product);
        request.setAttribute("product",product1);
        return "/detail.jsp";
    }

    @RequestMapping("/goods/updateCart")
    public Map updateCart(HttpServletRequest request,HttpSession session){
        String prodNo = request.getParameter("prodNo");
        String quantity = request.getParameter("quantity");
        String totalPrice = request.getParameter("totalPrice");
        logger.debug("prodNo:"+prodNo+"quantity"+quantity+"totalPrice1:"+totalPrice);

        Map<String, CartItem> cart = (Map<String, CartItem>)session.getAttribute("cart");

        if (StringUtils.isNoneBlank(prodNo) && StringUtils.isNoneBlank(quantity)){
            //如果在购物车中更改了商品数量，就更新数量
            Product product1 = new Product(prodNo,null,null,null,null,null,null,null,null,null,null);
            Product product = new ProductQueryDao().queryByNo(product1);
            cart.put(prodNo, new CartItem(product, Integer.valueOf(quantity)));
        }
        if (StringUtils.isNoneBlank(totalPrice)){
            //所有商品总价
            session.setAttribute("totalPrice",totalPrice);
        }
        session.setAttribute("cart", cart);
        logger.debug("更新后的cart:"+cart);

        Map json = new HashMap();
        json.put("result", true);
        return json;
    }

    @RequestMapping("/goods/submitOrder")
    public Map submitOrder(HttpServletRequest request,HttpSession session){
        String address = request.getParameter("address");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");


        Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
        GuimeiUsers user = (GuimeiUsers) session.getAttribute("user");

        Set<Map.Entry<String, CartItem>> entries = cart.entrySet();
        for (Map.Entry<String, CartItem> entry : entries){
            String prodNo = entry.getKey();
            int quantity = entry.getValue().getQuantity();
            Product product1 = new Product(prodNo,null,null,null,null,null,
                    null,null,null,null,null);
            Product product = new ProductQueryDao().queryByNo(product1);
            Double price = product.getPrice();
            Double totalPrice = price*quantity;
            //int t_buyer,Double t_total_money, String t_trd_loc,
            //String  t_receiver, String t_phone, String t_prod_no, int t_tran_numb
            new TradeTnfoDao().tradeTnfo(user.getUserId(),totalPrice,address,name,phone,prodNo,quantity);
        }

        // 清空购物车数据
        session.removeAttribute("cart");
        session.removeAttribute("totalPrice");
        logger.debug("成功清空cart和totalPrice！");

        Map json = new HashMap();
        json.put("result", true);
        return json;
    }

    @RequestMapping("/goods/deleteCart")
    public Map deleteCart(HttpServletRequest request,HttpSession session){
        String prodNo = request.getParameter("prodNo");
        logger.debug("prodNo："+prodNo);

        if (StringUtils.isNoneBlank(prodNo)){
            Map<String, CartItem> cart = (Map<String, CartItem>)session.getAttribute("cart");
            cart.remove(prodNo);
        }

        Map json = new HashMap();
        json.put("result", true);
        return json;
    }
}
