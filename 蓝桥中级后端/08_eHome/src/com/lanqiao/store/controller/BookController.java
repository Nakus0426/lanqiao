package com.lanqiao.store.controller;

import com.lanqiao.store.dao.ArticleDao;
import com.lanqiao.store.vo.Article;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookController {

    Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/index")
    public String selectArticle(HttpSession session){
        ArticleDao articleDao = new ArticleDao();

        List<Article> articles1 = articleDao.selectArticleType1();
        List<Article> articles2 = articleDao.selectArticleType2();
        List<Article> articles3 = articleDao.selectArticleType3();
        List<Article> articles4 = articleDao.selectArticleType4();

        session.setAttribute("list1",articles1);
        session.setAttribute("list2",articles2);
        session.setAttribute("list3",articles3);
        session.setAttribute("list4",articles4);

        return "index.jsp";
    }

    @RequestMapping("/search")
    public String search(HttpServletRequest request,Article article){
        ArticleDao articleDao = new ArticleDao();

        List<Article> searchList = articleDao.search(article);

        if (searchList != null){
            request.setAttribute("searchList",searchList);
            return "show.jsp";
        }else {
            return "redirect:/index.do";
        }

    }
}
