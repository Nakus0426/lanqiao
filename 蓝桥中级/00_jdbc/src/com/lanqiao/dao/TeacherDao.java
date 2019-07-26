package com.lanqiao.dao;

import com.lanqiao.entity.Student;
import com.lanqiao.entity.Teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao {
    Connection conn = JdbcUtil.getConnection();
    ResultSet rs = null;
    List<Teacher> teachers = new ArrayList<>();

    /**
     * 添加老师
     *
     * @param teacher 需要添加的teacher对象
     * @return 添加是否成功
     */
    public boolean save(Teacher teacher) {
        try (PreparedStatement ps = conn.prepareStatement("insert into TEACHER values(?,?,?,?)")) {
            int index = 1;
            ps.setInt(index++, teacher.getTno());
            ps.setString(index++, teacher.getTname());
            ps.setInt(index++, teacher.getTpassword());
            ps.setString(index++, teacher.getJob());

            int i = ps.executeUpdate();
            return (1 == 1 ? true : false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    /**
     * 查询教师信息
     *
     * @return teacher列表
     */
    public List<Teacher> selectAll(){
        try(PreparedStatement ps = conn.prepareStatement("select * from TEACHER order by TNO")){
            rs = ps.executeQuery();
            while (rs.next()){
                int tno = rs.getInt("tno");
                String tname = rs.getString("tname");
                int tpassword = rs.getInt("tpassword");
                String job = rs.getString("job");

                Teacher teacher = new Teacher(tno, tname, tpassword, job);
                teachers.add(teacher);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }
}
