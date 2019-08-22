package com.lanqiao.guimei.controller;


import com.lanqiao.guimei.dao.CategoryDao;
import com.lanqiao.guimei.vo.Category;
import com.lanqiao.guimei.vo.Page;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.System.out;

@Controller
public class CategoryController {
    Logger logger = Logger.getLogger(CategoryController.class);

    @RequestMapping("/query")
    public String querySort(HttpServletRequest request, HttpSession session, Category category){

        Page<Category> sortPage = (Page<Category>) session.getAttribute("sortPage");

        String pageNo = request.getParameter("pageNo");

        CategoryDao categoryDao = new CategoryDao();
        if (sortPage == null || StringUtils.isBlank(pageNo)){
            sortPage = new Page<Category>();
            sortPage.setPageSize(Page.R10);
            sortPage.setPageNo(1);
            sortPage.setQueryObject(category);
            sortPage.setTotalRow(categoryDao.queryCountForPageByCate(category));
        }else {
            sortPage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("sortPage",sortPage);

        List<Category> cateList = categoryDao.query(sortPage);
        logger.debug("List<Category> cate 为：" + cateList);
        request.setAttribute("cateList",cateList);

        return "/sortPage.jsp";
    }

/*
    @RequestMapping("/goodsSort/insert")
    public Map insertSort(Category category){
        boolean b = new CategoryDao().insertCate(category);
        Map json = new HashMap();
        if (b){
            json.put("result",true);
        }else {
            json.put("result",false);
        }
        return json;
    }*/

    @RequestMapping("/insert2")
    public String insertSort(HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {
        Integer bigCtgrId = Integer.valueOf(request.getParameter("bigCtgrId"));
        String bigCtgr = request.getParameter("bigCtgr");
        String ctgrName = request.getParameter("ctgrName");
        Map<String, Object> parameterMap = new HashMap<>();
        parameterMap.put("bigCtgr", bigCtgr);
        parameterMap.put("bigCtgrId", bigCtgrId);
        parameterMap.put("ctgrName", ctgrName);
        Category category = new Category();
        BeanUtils.populate(category, parameterMap);

        boolean insertCate = new CategoryDao().insertCate(category);
        if (insertCate){
            return "/query.do";
        }else {
            return "/addForm2.jsp?result=0";
        }

    }



    @RequestMapping("/goodsSort/delete")
    public Map deleteSort(Category category){
        boolean b = new CategoryDao().deleteCate(category);
        Map json = new HashMap();
        if (b){
            json.put("result",true);
        }else {
            json.put("result",false);
        }
        return json;
    }

    @RequestMapping("/goodsSort/update")
    public Map updateSort(Category category){
        boolean b = new CategoryDao().updeteCate(category);
        Map json = new HashMap();
        if (b){
            json.put("result",true);
        }else {
            json.put("result",false);
        }
        return json;
    }

//   @RequestMapping("/goodsSort/queryById")
//   public String  querySortById(HttpServletRequest request,Category category){
//       Category category1 = new CategoryDao().querySortById(category);
//       request.setAttribute("cate",category1);
//       logger.debug("queryById查询出的结果 ："+category1);
//       return "";
//    }
}
