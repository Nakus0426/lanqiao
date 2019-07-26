package com.lanqiao.dao;

import com.lanqiao.entity.Score;
import com.lanqiao.entity.ScoreDetail;
import com.lanqiao.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ScoreDao {
    Connection conn = JdbcUtil.getConnection();
    ResultSet rs = null;
    List<ScoreDetail> scoreDetails = new ArrayList<>();

    /**
     * 添加成绩信息
     *
     * @param score 需要添加的score对象
     * @return 添加是否成功
     */
    public boolean save(Score score){
        try (PreparedStatement ps = conn.prepareStatement("insert into SCORE values(?,?,?)")){
            int index = 1;
            ps.setString(index++,score.getCno());
            ps.setInt(index++,score.getSno());
            ps.setInt(index++,score.getScore());

            int i = ps.executeUpdate();
            return (i == 1 ? true : false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    /**
     * 按学号查询学生详细成绩
     *
     * @param sno 需要查询的学生学号
     * @return scoreDetails列表
     */
    public List<ScoreDetail> select(int sno){
        try (PreparedStatement ps = conn.prepareStatement("select SNAME,CNAME,SCORE,CREDIT,TNAME from STUDENT sd,SCORE s,COURSE c,TEACHER t where s.CNO=c.CNO and sd.SNO=s.SNO and c.TNO=t.TNO and s.SNO=?")){
            ps.setInt(1,sno);
            rs=ps.executeQuery();
            while (rs.next()){
                String sname = rs.getString("sname");
                String cname = rs.getString("cname");
                int score = rs.getInt("score");
                int credit = rs.getInt("credit");
                String tname = rs.getString("tname");

                ScoreDetail scoreDetail = new ScoreDetail(sname, cname, score, credit, tname);
                scoreDetails.add(scoreDetail);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return scoreDetails;
    }
}
