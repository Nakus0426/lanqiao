package com.lanqiao.guimei.dao;


import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.commons.ResultSetHandler;
import com.lanqiao.guimei.vo.Page;
import com.lanqiao.guimei.vo.Trades;
import org.apache.commons.dbutils.QueryRunner;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TradeDao {
    Logger logger = Logger.getLogger(TradeDao.class);

    QueryRunner runner = new QueryRunner(true);

    public  int countForPage(Page<Trades> page) {
        String sql = "select count(1) cnt from trade_info where trd_status=1";
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, sql, new ScalarHandler<BigDecimal>("cnt")).intValue();

        } catch (SQLException e) {
            logger.error("统计总记录数. ", e);
        }
        return 0;
    }


    //1.查询订单信息
    public List<Trades> findForPage(Page<Trades> page) {
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, "select trd_no trdNO,buyer,total_Money tptalMoney,trd_time trdTime,\n" +
                            "trd_loc trdLoc, receiver,phone,trd_status trdStatus,prod_no prodNo  ,quantity ,\n" +
                            " ven_name venName,image imageName, descr,ctgr_name ctgrName  from(\n" +
                            "                              select t.*,ROWNUM rn from (\n" +
                            "                                   select e.*,d.prod_no,d.quantity,r.ven_name,f.image,f.descr,c.ctgr_name from \n" +
                            "                                   trade_info e,trade_detail d,\n" +
                            "                                   vendor r,product f,category c where\n" +
                            "e.trd_no=d.trd_no and d.prod_no=f.prod_no and f.ven_id=r.ven_id and f.ctgr_id=c.ctgr_id and trd_status=1 \n" +
                            "                               ) t where ROWNUM<=?\n" +
                            "                            ) where rn>=?",
                    new BeanListHandler<Trades>(Trades.class),
                    page.getLastIndex(),
                    page.getFirstIndex());

        } catch (SQLException e) {
            logger.error("分页查询失败。", e);
        }
        return null;
    }

    //2.删除员工，假删除实则是更新状态
    public boolean delect(Trades trades) {
        StringBuffer sql = new StringBuffer("update trade_info set trd_status=0 where trd_no=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1,trades.getTrdNo());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("删除失败：" + e.getMessage());
        }
        return false;
    }





    public boolean update(Trades trades) {
        StringBuffer sql = new StringBuffer("update trade_info set trd_loc=?,total_money=?,receiver=?,phone =? where trd_no=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1,trades.getTrdLoc());
            ps.setDouble(2,trades.getTptalMoney());
            ps.setString(3,trades.getReceiver());
            ps.setString(4,trades.getPhone());
            ps.setString(5,trades.getTrdNo());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            logger.error("更新商品信息失败。", e);
        }
        return false;
    }















    //按编号查找订单的4个属性
    public Trades findByPk(String trdNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("select TRD_NO trdNo,TOTAL_MONEY tptalMoney,TRD_LOC trdLoc,receiver,phone from  trade_info where TRD_NO=?");
        ) {
            ps.setString(1,trdNo);
            ResultSet rs = ps.executeQuery();
            return new ResultSetHandler<Trades>().toBean(rs, Trades.class);

        } catch (SQLException e) {
            System.err.println("按编号查找订单失败：" + e.getMessage());
        }
        return null;
    }

    //统计回收站中的订单数量
    public  int countForRecyclePage(Page<Trades> page) {
        String sql = "select count(1) cnt from trade_info where trd_status=0";
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, sql, new ScalarHandler<BigDecimal>("cnt")).intValue();

        } catch (SQLException e) {
            logger.error("统计总记录数. ", e);
        }
        return 0;
    }


    //查找回收站中的订单
    public List<Trades> findForRecyclePage(Page<Trades> page) {
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, "select trd_no trdNO,buyer,total_Money tptalMoney,trd_time trdTime,\n" +
                            "trd_loc trdLoc, receiver,phone,trd_status trdStatus,prod_no prodNo  ,quantity ,\n" +
                            " ven_name venName,image imageName, descr,ctgr_name ctgrName  from(\n" +
                            "                              select t.*,ROWNUM rn from (\n" +
                            "                                   select e.*,d.prod_no,d.quantity,r.ven_name,f.image,f.descr,c.ctgr_name from \n" +
                            "                                   trade_info e,trade_detail d,\n" +
                            "                                   vendor r,product f,category c where\n" +
                            "e.trd_no=d.trd_no and d.prod_no=f.prod_no and f.ven_id=r.ven_id and f.ctgr_id=c.ctgr_id and trd_status=0 \n" +
                            "                               ) t where ROWNUM<=?\n" +
                            "                            ) where rn>=?",
                    new BeanListHandler<Trades>(Trades.class),
                    page.getLastIndex(),
                    page.getFirstIndex());

        } catch (SQLException e) {
            logger.error("分页查询失败。", e);
        }
        return null;
    }

    //找回回收站中的订单
    public boolean retrieve(Trades trades) {
        StringBuffer sql = new StringBuffer("update trade_info set trd_status=1 where trd_no=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1,trades.getTrdNo());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("找回失败：" + e.getMessage());
        }
        return false;
    }

    //删除订单回收站中的订单
    public boolean delectRetrieve(Trades trades) {
        StringBuffer sql = new StringBuffer("update trade_info set trd_status=3 where trd_no=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1,trades.getTrdNo());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("删除失败：" + e.getMessage());
        }
        return false;
    }


    //按编号分页查询信息
    public List<Trades> queryl(Page<Trades> page) {
        // 从分页Bean中获得查询条件
        Trades trades = page.getQueryObject();

        List params = new ArrayList();

        StringBuffer sql = new StringBuffer(" select trd_no trdNO,buyer,total_Money tptalMoney,trd_time trdTime, " +
                "trd_loc trdLoc, receiver,phone,trd_status trdStatus,prod_no prodNo  ,quantity , " +
                " ven_name venName,image imageName, descr,ctgr_name ctgrName  from( " +
                "                              select t.*,ROWNUM rn from ( " +
                "                                   select e.*,d.prod_no,d.quantity,r.ven_name,f.image,f.descr,c.ctgr_name from  " +
                "                                   trade_info e,trade_detail d, " +
                "                                   vendor r,product f,category c where " +
                "e.trd_no=d.trd_no and d.prod_no=f.prod_no and f.ven_id=r.ven_id and f.ctgr_id=c.ctgr_id and trd_status=1  ");

        // 生成查询条件，且将占位符对应位置的值存入列表
        if (StringUtils.isNoneBlank( trades.getTrdNo())){
            sql.append(" and e.trd_no like ? ");
            params.add("%" + trades.getTrdNo() + "%");
        }


        //
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
            List<Trades> trades1 = new ResultSetHandler<Trades>().toBeanList(rs, Trades.class);
            return trades1;

        } catch (SQLException e) {
            System.err.println("查询订单编号失败：" + e.getMessage());
        }
        return null;
    }




}
