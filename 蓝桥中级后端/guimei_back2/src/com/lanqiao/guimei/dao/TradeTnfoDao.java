package com.lanqiao.guimei.dao;

import com.lanqiao.guimei.commons.JdbcUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import java.sql.*;


/**
 * @Author 天份
 * @Date 2019/8/15 0015 16:33
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class TradeTnfoDao {

    Logger logger = Logger.getLogger(TradeTnfoDao.class);

    /**
     * 调用存储过程，用于插入订单表时
     * @param t_buyer
     * @param t_total_money
     * @param t_trd_loc
     * @param t_receiver
     * @param t_phone
     * @param t_prod_no
     * @param t_tran_numb
     * @return
     */
    public boolean tradeTnfo(int t_buyer, Double t_total_money, String t_trd_loc, String t_receiver, String t_phone, String t_prod_no, int t_tran_numb){
        boolean flag = false;

        try (Connection conn = JdbcUtil.getConnection();
             CallableStatement cs = conn.prepareCall("{call proc_trade_info(?,?,?,?,?,?,?)}");
        ) {
            // 设置点占位符, in 模式
            cs.setInt(1, t_buyer);
            cs.setDouble(2, t_total_money);
            cs.setString(3, t_trd_loc);
            cs.setString(4, t_receiver);
            cs.setString(5, t_phone);
            cs.setString(6, t_prod_no);
            cs.setInt(7, t_tran_numb);

            flag = cs.execute();

        } catch (SQLException e) {
            logger.info("TradeTnfoDao 类 tradeTnfo 方法 调用异常", e);
        }
        return flag;
    }

    /**
     *  输入商品的名称，返回该商品每个 月度的销售量
     * @param bigCtgr
     * @return
     */
    public int[] saleMonth(String bigCtgr){
        String sql = "select * from tran_statistics where ctgr_name=?";
        int[] list = new int[15];
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ps.setString(1, bigCtgr);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //list[Integer.valueOf(rs.getString("tran_time").toString())] = rs.getInt("tran_numb");
                list[Integer.valueOf(StringUtils.substring(rs.getString("tran_time"), 5, 7))-1] += rs.getInt("tran_numb");
            }

        } catch (SQLException e) {
            logger.info("TradeTnfoDao 类 numbForBig 有错误", e);
        }
        return list;
    }

    /**
     *  输入商品大类的名称查找该商品按 年度销售量 统计
     * @param name
     * @return
     */
    public int[] saleYear(String name){
        String sql = "select tran_time tranTime, tran_numb tranNumb from tran_statistics where big_ctgr = ?";
        int[] a = new int[3];
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (StringUtils.equals("2017", StringUtils.substring(rs.getString("tranTime"), 0, 4))) {
                    a[0] += rs.getInt("tranNumb");
                }else if (StringUtils.equals("2018", StringUtils.substring(rs.getString("tranTime"), 0, 4))) {
                    a[1] += rs.getInt("tranNumb");
                }else if (StringUtils.equals("2019", StringUtils.substring(rs.getString("tranTime"), 0, 4))) {
                    a[2] += rs.getInt("tranNumb");
                }
            }

        } catch (SQLException e) {
            logger.error("TradeTnfoDao类中的 saleYear方法异常", e);
        }
        return a;
    }

    /**
     *  输入商品大类的名称查找该商品按 季度销售量 统计
     * @param name
     * @return
     */
    public int[] salequarter(String name){
        String sql = "select tran_time tranTime, tran_numb tranNumb from tran_statistics where big_ctgr = ?";
        int[] a = new int[4];
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int k = Integer.valueOf(StringUtils.substring(rs.getString("tranTime"), 5, 7));
                a[(k-1)/3] += rs.getInt("tranNumb");
            }

        } catch (SQLException e) {
            logger.error("TradeTnfoDao类中的 salequarter方法异常", e);
        }
        return a;
    }

    public static void main(String[] args) {
        //System.out.println(new TradeTnfoDao().tradeTnfo(1, 8899.9, "天津", "小虎", "1234567", "895B9AA406F54AB8BD3281C707D79B5C", 2));
        //System.out.println(Arrays.toString(new TradeTnfoDao().numbForBig("沙发")));
       /* int[] s = new TradeTnfoDao().saleYear("沙发");
        for (int i : s) {
            System.out.println(i);
        }*/

/*        for (int i : new TradeTnfoDao().salequarter("沙发")) {
            System.out.println(i);
        }*/
    }

}
