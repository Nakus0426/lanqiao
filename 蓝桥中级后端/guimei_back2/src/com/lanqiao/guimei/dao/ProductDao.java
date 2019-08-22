package com.lanqiao.guimei.dao;

import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.commons.ResultSetHandler;
import com.lanqiao.guimei.vo.Category;
import com.lanqiao.guimei.vo.Page;
import com.lanqiao.guimei.vo.Product;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {


    Logger logger = Logger.getLogger(ProductDao.class);

    QueryRunner runner = new QueryRunner(true);


    /**
     * 统计总记录数
     *
     * @param page
     * @return
     */

    public int countForPage(Page<Product> page) {
        // 从分页Bean中获得查询条件
        Product product = page.getQueryObject();

        StringBuffer sql = new StringBuffer(" select count(1) cnt from product where 1=1 ");

        List params = new ArrayList();

        // 生成查询条件，且将占位符对应位置的值存入列表
        if (StringUtils.isNoneBlank(product.getProdName())){
            sql.append(" and PROD_NAME like ? ");
            params.add("%" + product.getProdName() + "%");
        }
        if (StringUtils.isNoneBlank(product.getType())){
            sql.append(" and type like ? ");
            params.add("%"+product.getType()+"%");
        }

        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {
            for (int i = 0; i < params.size(); i++) {
                // 设置占位符的值
                ps.setObject(i+1, params.get(i));
            }

            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                // 查询结果只有一列，指定列索引
                return resultSet.getInt(1);
            }

        } catch (SQLException e) {
            System.err.println("统计总记录数错误：" + e.getMessage());
        }
        return 0;
    }






    /**
     * 分页
     * @param
     * @return
     */

    public List<Product> findForPage2(Page<Product> page) {
        // 从分页Bean中获得查询条件
        Product product = page.getQueryObject();

        List params = new ArrayList();
        StringBuffer sql = new StringBuffer("select * from(" +
                "   select t.*,ROWNUM rn from (" +
                "       select prod_no prodNo , STK_ID stkId,PROD_NAME prodName,PRICE,TYPE,IMAGE,color , status from product where 1=1  ");

        // 生成查询条件，且将占位符对应位置的值存入列表
        if (StringUtils.isNoneBlank(product.getProdName())){
            sql.append(" and PROD_NAME like ? ");
            params.add("%" + product.getProdName() + "%");
        }
        if (StringUtils.isNoneBlank(product.getType())){
            sql.append(" and type like ? ");
            params.add("%"+product.getType()+"%");
        }
        if (product.getStatus() != null){
            sql.append(" and status =? ");
            params.add(product.getStatus());
        }

        sql.append(") t where ROWNUM<=? " +
                ") where rn>=?");
        //System.out.println(sql);
        params.add(page.getLastIndex());
        params.add(page.getFirstIndex());

        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {
            for (int i = 0; i < params.size(); i++) {
                // 设置占位符的值
                ps.setObject(i+1, params.get(i));
            }

            ResultSet rs = ps.executeQuery();
            List<Product> products = new ResultSetHandler<Product>().toBeanList(rs, Product.class);
            return products;

        } catch (SQLException e) {
            System.err.println("查询商品失败：" + e.getMessage());
        }
        return null;
    }



    public List<Product> findForPage() {
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, " select prod_no prodNo , STK_ID stkId,PROD_NAME prodName,PRICE,TYPE,IMAGE,color from product  order by ctgr_Id"
                    , new BeanListHandler<Product>(Product.class));

        } catch (SQLException e) {
            logger.error("查询失败。", e);
        }
        return null;
    }

    public boolean delete(String prodNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("delete from product where prod_no=?");
        ) {
            ps.setString(1, prodNo);
            int deleted = ps.executeUpdate();
            return (deleted==1 ? true : false);
        } catch (SQLException e) {
            logger.error("删除失败。", e);
        }
        return false;

    }




    public boolean fakeDelete(String prodNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("update product set status = 0  where prod_no=?");
        ) {
            ps.setString(1, prodNo);
            int deleted = ps.executeUpdate();
            return (deleted==1 ? true : false);
        } catch (SQLException e) {
            logger.error("商品下架失败。", e);
        }
        return false;

    }


    public boolean onSale(String prodNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("update product set status = 1  where prod_no=?");
        ) {
            ps.setString(1, prodNo);
            int deleted = ps.executeUpdate();
            return (deleted==1 ? true : false);
        } catch (SQLException e) {
            logger.error("商品上架失败。", e);
        }
        return false;

    }





    public boolean update(Product product) {
        StringBuffer sql = new StringBuffer("update product set ctgr_id=?,ven_id=?,stk_id=?,prod_name=?,price=?,type=?,descr=?,image=? ,color=? where prod_no=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setInt(1,product.getCtgrId());
            ps.setInt(2,product.getVenId());
            ps.setInt(3, product.getStkId());
            ps.setString(4, product.getProdName());
            ps.setDouble(5, product.getPrice());
            ps.setString(6, product.getType());
            ps.setString(7, product.getDescr());
            ps.setString(8, product.getImage());
            ps.setString(9,product.getColor());
            ps.setString(10,product.getProdNo());
            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            logger.error("更新商品信息失败。", e);
        }
        return false;
    }

    public boolean insert(Product product) {

        StringBuffer sql = new StringBuffer("insert into product(ctgr_id, ven_id, stk_id, prod_name, price, type, descr, image ,status,color) " +
                "values (?,?,?,?,?,?,?,?,?,?)");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setInt(1,product.getCtgrId());
            ps.setInt(2,product.getVenId());
            ps.setInt(3, product.getStkId());
            ps.setString(4, product.getProdName());
            ps.setDouble(5, product.getPrice());
            ps.setString(6, product.getType());
            ps.setString(7, product.getDescr());
            ps.setString(8, product.getImage());
            ps.setInt(9, 0);
            ps.setString(10, product.getColor());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            logger.error("新增商品失败。", e);
        }
        return false;
    }



    public Product findByPk(String prodNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("select prod_no prodNo ,CTGR_ID ctgrId,VEN_ID venId ,STK_ID stkId,PROD_NAME prodName,PRICE,TYPE,DESCR,IMAGE,STATUS,color from product where prod_No=?");
        ) {
            ps.setString(1, prodNo);
            ResultSet rs = ps.executeQuery();
            return new ResultSetHandler<Product>().toBean(rs, Product.class);

        } catch (SQLException e) {
            System.err.println("按编号查找商品失败：" + e.getMessage());
        }
        return null;
    }




    public List<Product> query(Category category){
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("select prod_no prodNo,p.ctgr_id ctgrId,ven_id venId,stk_id stkId," +
                "prod_name prodName,price,type,descr,image,status,color from PRODUCT p,CATEGORY c where c.ctgr_id=p.ctgr_id ");
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
            List<Product> query = runner.query(conn, sql.toString(), new BeanListHandler<Product>(Product.class),param.toArray());
            return query;
        } catch (SQLException e) {
            System.err.println("商品查询失败："+e);
        }
        return null;
    }


}
