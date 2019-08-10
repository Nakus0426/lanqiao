package com.lanqiao.store.controller;

import com.lanqiao.store.dao.FoodDao;
import com.lanqiao.store.vo.Food;
import com.lanqiao.store.vo.Page;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import com.sun.deploy.net.HttpRequest;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FoodController {
    Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/user/food")
    public String selectAll(HttpSession session, HttpServletRequest request, Food food){

        Page<Food> foodPage = (Page<Food>) session.getAttribute("foodPage");
        FoodDao foodDao = new FoodDao();
        String pageNo = request.getParameter("pageNo");

        if (foodPage == null || StringUtils.isBlank(pageNo)){
            foodPage = new Page<Food>();
            foodPage.setPageSize(6);
            foodPage.setPageNo(1);
            foodPage.setQueryObject(food);
            // 统计总记录数
            foodPage.setTotalRow(foodDao.countOfFood());
        } else {
            foodPage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("foodPage", foodPage);

        // 查询列表数据
        List<Food> foodList = foodDao.seletAll(foodPage);
        request.setAttribute("foodList", foodList);

        return "/main.jsp";
    }

    @RequestMapping("/user/info")
    public Food foodInfo(HttpServletRequest request){
        FoodDao foodDao = new FoodDao();
        Integer foodId = Integer.valueOf(request.getParameter("foodId"));
        Food food = foodDao.selectById(foodId);
//        request.setAttribute("food",food);
        return food;
    }
}
