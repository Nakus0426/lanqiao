package com.lanqiao.dao;

import com.lanqiao.entity.Course;
import com.lanqiao.entity.ScoreDetail;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CourseDao {
    Connection conn = JdbcUtil.getConnection();
    ResultSet rs = null;
    List<Course> courses = new ArrayList<>();

    /**
     * 查询课程信息
     *
     * @return course列表
     */
    public List<Course> select(){
        try (PreparedStatement ps = conn.prepareStatement("select * from COURSE")){
            rs=ps.executeQuery();
            while (rs.next()) {
                String cno = rs.getString("cno");
                String cname = rs.getString("cname");
                int credit = rs.getInt("credit");
                Date fromdate = rs.getDate("fromdate");
                Date enddate = rs.getDate("endday");
                int tno = rs.getInt("tno");

                Course course = new Course(cno, cname, credit, fromdate, enddate, tno);
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courses;
    }
}
