package com.lanqiao.store.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.store.vo.Article;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.jsp.tagext.TryCatchFinally;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArticleDao {
    Logger logger = Logger.getLogger(ArticleDao.class);
    QueryRunner runner = new QueryRunner(true);

    /**
     * @return 查询首页栏目数据（Type1）
     */
    public List<Article> selectArticleType1(){

        try (Connection conn = JdbcUtil.getConnection()){

            String sql = "select TITLE,WRITEDATE,ARTICLEID from ARTICLE where TYPE=1";
            return runner.query(conn, sql, new BeanListHandler<Article>(Article.class));

        } catch (SQLException e) {
            logger.error(e);
        }
        return null;
    }

    /**
     * @return 查询首页栏目数据（Type2）
     */
    public List<Article> selectArticleType2(){

        try (Connection conn = JdbcUtil.getConnection()){

            String sql = "select TITLE,WRITEDATE,ARTICLEID from ARTICLE where TYPE=2";
            return runner.query(conn, sql, new BeanListHandler<Article>(Article.class));

        } catch (SQLException e) {
            logger.error(e);
        }
        return null;
    }

    /**
     * @return 查询首页栏目数据（Type3）
     */
    public List<Article> selectArticleType3(){

        try (Connection conn = JdbcUtil.getConnection()){

            String sql = "select TITLE,WRITEDATE,ARTICLEID from ARTICLE where TYPE=3";
            return runner.query(conn, sql, new BeanListHandler<Article>(Article.class));

        } catch (SQLException e) {
            logger.error(e);
        }
        return null;
    }

    /**
     * @return 查询首页栏目数据（Type4）
     */
    public List<Article> selectArticleType4(){

        try (Connection conn = JdbcUtil.getConnection()){

            String sql = "select TITLE,WRITEDATE,ARTICLEID from ARTICLE where TYPE=4";
            return runner.query(conn, sql, new BeanListHandler<Article>(Article.class));

        } catch (SQLException e) {
            logger.error(e);
        }
        return null;
    }

    /**
     * @return 搜索
     */
    public List<Article> search(Article article){
        List params = new ArrayList();
        StringBuffer sql = new StringBuffer("select TITLE,WRITEDATE,ARTICLEID from ARTICLE a,TYPES t where a.TYPE = t.TYPEID ");

        if (StringUtils.isNoneBlank(article.getType())) {
            sql.append(" and a.TYPE=? ");
            params.add(article.getType());
        }
        if (StringUtils.isNoneBlank(article.getTitle())) {
            sql.append(" and TITLE=? ");
            params.add(article.getTitle());
        }
        if (StringUtils.isNoneBlank(article.getWriter())) {
            sql.append(" and WRITER=? ");
            params.add(article.getWriter());
        }

        String sql1 = String.valueOf(sql);

        try (Connection conn = JdbcUtil.getConnection();){

            return runner.query(conn, sql1, new BeanListHandler<Article>(Article.class), params.toArray());
        } catch (SQLException e) {
            logger.error(e);
        }

        return null;
    }
}
