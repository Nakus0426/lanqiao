package com.lanqiao.store.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.store.vo.Food;
import com.lanqiao.store.vo.Page;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FoodDao {
    QueryRunner runner = new QueryRunner(true);
    Logger logger = Logger.getLogger(FoodDao.class);

    /**
     * @return 取总记录数
     */
    public int countOfFood(){

        String sql = "select * from FOODINFO";

        try (Connection conn = JdbcUtil.getConnection();
        ) {
            List<Food> foods = runner.query(conn, sql, new BeanListHandler<Food>(Food.class));
            return foods.size();

        } catch (SQLException e) {
            logger.error("统计总记录数错误：" + e.getMessage());
        }
        return 0;
    }

    /**
     * @param page 分页查询
     * @return
     */
    public List<Food> seletAll(Page<Food> page){
        String sql = "select * from(" +
                "select t.*,ROWNUM rn from(" +
                "select * from FOODINFO order by FOODID) t " +
                "where ROWNUM<=?) " +
                "where rn>=?";

        try (Connection conn = JdbcUtil.getConnection()) {

            return runner.query(conn,sql,
                    new BeanListHandler<Food>(Food.class),
                    page.getLastIndex(),
                    page.getFirstIndex());

        } catch (SQLException e) {
            logger.error("分页查询失败。", e);
        }
        return null;
    }

    /**
     * @param foodId 按id查询
     * @return
     */
    public Food selectById(Integer foodId){
        String sql = "select FOODNAME,DESCRIPTION,FOODIMAGE from FOODINFO where FOODID=?";

        try (Connection conn = JdbcUtil.getConnection()) {

            return runner.query(conn,sql, new BeanHandler<Food>(Food.class),foodId);

        } catch (SQLException e) {
            logger.error("按id查询失败。", e);
        }
        return null;
    }
}
