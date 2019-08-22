package com.lanqiao.guimei.dao;



import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.vo.GuimeiAdmin;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.log4j.Logger;


import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author Marcy -- 马庆晓
 * created on 2019/8/14 16:41
 */
public class GuimeiAdminDao {
    Logger logger = Logger.getLogger(GuimeiAdmin.class);

    QueryRunner runner = new QueryRunner(true);

    /**
     * 登录
     *
     * @param
     * @return
     */
    public GuimeiAdmin adminlogin(GuimeiAdmin guimeiAdmin) {
        Connection conn = JdbcUtil.getConnection();
        try {
            return runner.query(conn, "select user_id userid,login_name loginname,password  from guimei_admin where login_name=? and password=?",
                    new BeanHandler<>(GuimeiAdmin.class), guimeiAdmin.getLoginname(), guimeiAdmin.getPassword());
        } catch (SQLException e) {
            logger.error("管理员登录错误！", e);
        }
        return null;
    }
}