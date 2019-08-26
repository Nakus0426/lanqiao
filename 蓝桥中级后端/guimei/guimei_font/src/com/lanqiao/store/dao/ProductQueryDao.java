package com.lanqiao.store.dao;

import com.lanqiao.store.commons.JdbcUtil;
import com.lanqiao.store.vo.Category;
import com.lanqiao.store.vo.Page;
import com.lanqiao.store.vo.Product;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.commons.lang3.StringUtils;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductQueryDao {
    QueryRunner runner = new QueryRunner(true);

    public List<Product> query(Page<Category> page){
        //获取查询条件（对象） category
        Category category = page.getQueryObject();
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("select * from (select t.*,ROWNUM rn,VEN_NAME venName,VEN_ADDR venAddr from (select prod_no prodNo,p.ctgr_id ctgrId,ven_id venId,stk_id stkId,prod_name prodName,price,type,descr,image,status,color from PRODUCT p,CATEGORY c where c.ctgr_id=p.ctgr_id ");
        if (category.getCtgrId() != null){
            sql.append(" and c.ctgr_id=?");
            param.add(category.getCtgrId());
        }
        if (category.getBigCtgrId() != null){
            sql.append(" and c.big_ctgr_id=?");
            param.add(category.getBigCtgrId());
        }
        if (StringUtils.isNoneBlank(category.getCtgrName())){
            sql.append(" and c.ctgr_name like ?");
            param.add("%"+category.getCtgrName()+"%");
        }
        if (StringUtils.isNoneBlank(category.getBigCtgr())){
            sql.append(" and c.big_ctgr like ?");
            param.add("%"+category.getBigCtgr()+"%");
        }
        sql.append(" ) t,VENDOR v where ROWNUM<=? and v.VEN_ID=t.venId) where rn>=?");
        param.add(page.getLastIndex());
        param.add(page.getFirstIndex());
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, sql.toString(), new BeanListHandler<Product>(Product.class),param.toArray());
        } catch (SQLException e) {
            System.err.println("商品查询失败："+e);
        }
        return null;
    }

    public int queryCountForPage(){
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, "select count(1) cnt from product", new ScalarHandler<BigDecimal>("cnt")).intValue();
        } catch (SQLException e) {
            System.err.println("查询记录数失败："+e);
        }
        return 0;
    }

    public Product queryByNo(Product product){
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn,"select prod_no prodNo,ctgr_id ctgrId,ven_id venId," +
                            "stk_id stkId,prod_name prodName,price,type,descr,image,status,color from product where prod_no=?",
                    new BeanHandler<>(Product.class),product.getProdNo());
        } catch (SQLException e) {
        }
        return null;
    }

    public int queryCountForPageByCate(Category category){
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("select count(1) cnt from product p,category c where p.ctgr_id=c.ctgr_id ");
        if (category.getCtgrId() != null){
            sql.append(" and c.ctgr_id=?");
            param.add(category.getCtgrId());
        }
        if (category.getBigCtgrId() != null){
            sql.append(" and c.big_ctgr_id=?");
            param.add(category.getBigCtgrId());
        }
        if (StringUtils.isNoneBlank(category.getCtgrName())){
            sql.append(" and c.ctgr_name like ?");
            param.add("%"+category.getCtgrName()+"%");
        }
        if (StringUtils.isNoneBlank(category.getBigCtgr())){
            sql.append(" and c.big_ctgr like ?");
            param.add("%"+category.getBigCtgr()+"%");
        }
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, sql.toString(), new ScalarHandler<BigDecimal>("cnt"),param.toArray()).intValue();
        } catch (SQLException e) {
            System.err.println("查询记录数失败："+e);
        }
        return 0;
    }
}
