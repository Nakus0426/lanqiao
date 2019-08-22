package com.lanqiao.guimei.controller;


import com.lanqiao.guimei.dao.TradeTnfoDao;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

/**
 * @Author 天份
 * @Date 2019/8/8 0008 15:37
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
@Controller
public class FoodController {

    @RequestMapping(value = "/year")
    public String year(HttpServletRequest request){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        int[] arr1 = new TradeTnfoDao().saleYear("沙发");
        int[] arr2 = new TradeTnfoDao().saleYear("床具");
        int[] arr3 = new TradeTnfoDao().saleYear("柜架");
        int[] arr4 = new TradeTnfoDao().saleYear("椅凳");

        request.setAttribute("arr1", arr1);
        request.setAttribute("arr2", arr2);
        request.setAttribute("arr3", arr3);
        request.setAttribute("arr4", arr4);

        return "/yearPage.jsp";
    }

    @RequestMapping(value = "/quarter")
    public String quarter(HttpServletRequest request){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        int[] arr1 = new TradeTnfoDao().salequarter("沙发");
        int[] arr2 = new TradeTnfoDao().salequarter("床具");
        int[] arr3 = new TradeTnfoDao().salequarter("柜架");
        int[] arr4 = new TradeTnfoDao().salequarter("椅凳");

        request.setAttribute("arr1", arr1);
        request.setAttribute("arr2", arr2);
        request.setAttribute("arr3", arr3);
        request.setAttribute("arr4", arr4);
        return "/quarterPage.jsp";
    }

    @RequestMapping(value = "/month")
    public String month(HttpServletRequest request){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        int[] s1 = new TradeTnfoDao().saleMonth("三人沙发");
        int[] s2 = new TradeTnfoDao().saleMonth("双人沙发");
        int[] s3 = new TradeTnfoDao().saleMonth("单人沙发");
        int[] s4 = new TradeTnfoDao().saleMonth("大三人沙发");
        int[] s5 = new TradeTnfoDao().saleMonth("床");
        int[] s6 = new TradeTnfoDao().saleMonth("床垫");
        int[] s7 = new TradeTnfoDao().saleMonth("床品4件套");
        int[] s8 = new TradeTnfoDao().saleMonth("被芯");
        int[] s9 = new TradeTnfoDao().saleMonth("COSMO");
        int[] s10 = new TradeTnfoDao().saleMonth("置物具");
        int[] s11 = new TradeTnfoDao().saleMonth("书柜_书架");
        int[] s12 = new TradeTnfoDao().saleMonth("电视柜");
        int[] s13 = new TradeTnfoDao().saleMonth("座椅");
        int[] s14 = new TradeTnfoDao().saleMonth("坐墩");
        int[] s15 = new TradeTnfoDao().saleMonth("优闲椅");
        int[] s16 = new TradeTnfoDao().saleMonth("凳子");

        request.setAttribute("s1", s1);
        request.setAttribute("s2", s2);
        request.setAttribute("s3", s3);
        request.setAttribute("s4", s4);
        request.setAttribute("s5", s5);
        request.setAttribute("s6", s6);
        request.setAttribute("s7", s7);
        request.setAttribute("s8", s8);
        request.setAttribute("s9", s9);
        request.setAttribute("s10", s10);
        request.setAttribute("s11", s11);
        request.setAttribute("s12", s12);
        request.setAttribute("s13", s13);
        request.setAttribute("s14", s14);
        request.setAttribute("s15", s15);
        request.setAttribute("s16", s16);
        return "/monthPage.jsp";
    }

}
