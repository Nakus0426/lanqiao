package com.lanqiao.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.CdDisc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CdDiscDao {

    /**
     * 查询唱片
     *
     * @return
     */
    public List<CdDisc> list() {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("select DISC_NO discNo, TITLE, DESCRIPTION, img, PRICE from CDDISC");
        ) {

            ResultSet rs = ps.executeQuery();
            return new ResultSetHandler<CdDisc>().toBeanList(rs, CdDisc.class);

        } catch (SQLException e) {
            System.err.println("查询唱片失败：" + e.getMessage());
        }
        return null;
    }


    /**
     * 按编号查询唱片
     *
     * @param discNo
     * @return
     */
    public CdDisc findByNo(String discNo) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("select DISC_NO discNo, TITLE, DESCRIPTION, img, PRICE " +
                     "from CDDISC where DISC_NO=?");
        ) {

            ps.setString(1, discNo);
            ResultSet rs = ps.executeQuery();
            return new ResultSetHandler<CdDisc>().toBean(rs, CdDisc.class);

        } catch (SQLException e) {
            System.err.println("按编号查询唱片失败：" + e.getMessage());
        }
        return null;
    }

}
