package com.lanqiao.dao;

import com.lanqiao.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    Connection conn = JdbcUtil.getConnection();
    ResultSet rs = null;
    List<Student> students = new ArrayList<>();

    /**
     * 添加学生
     *
     * @param student 需要添加的studnet对象
     * @return 添加是否成功
     */
    public boolean save(Student student) {
        try (PreparedStatement ps = conn.prepareStatement("insert into STUDENT values(?,?,?,?,?,?)")) {
            int index = 1;
            ps.setInt(index++, student.getSno());
            ps.setString(index++, student.getSname());
            ps.setString(index++, student.getSex());
            ps.setString(index++, student.getGrade());
            ps.setString(index++, student.getAcademy());
            ps.setInt(index++, student.getPhone());

            int i = ps.executeUpdate();
            return (i == 1 ? true : false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    /**
     * 查询学生信息
     *
     * @return student列表
     */
    public List<Student> selectAll() {
        try (PreparedStatement ps = conn.prepareStatement("select * from STUDENT order by SNO")) {
            rs = ps.executeQuery();

            while (rs.next()) {
                int sno = rs.getInt("sno");
                String sname = rs.getString("sname");
                String sex = rs.getString("sex");
                String grade = rs.getString("grade");
                String academy = rs.getString("academy");
                int phone = rs.getInt("phone");

                Student student = new Student(sno, sname, sex, academy, grade, phone);
                students.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }


    /**
     * 按学号更新学生信息
     *
     * @param sno     需要更新的学生学号
     * @param grade   年级
     * @param academy 学院
     * @param phone   电话
     * @return 更新是否成功
     */
    public boolean update(int sno, String grade, String academy, int phone) {
        try (PreparedStatement ps = conn.prepareStatement("update STUDENT set GRADE=?,ACADEMY=?,PHONE=? where SNO=?")) {
            int index = 1;
            ps.setString(index++, grade);
            ps.setString(index++, academy);
            ps.setInt(index++, phone);
            ps.setInt(index++, sno);

            int i = ps.executeUpdate();
            return (i == 1 ? true : false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    /**
     * 按学号删除学生信息
     *
     * @param sno 需要删除的学生学号
     * @return 删除是否成功
     */
    public boolean delete(int sno) {
        try(PreparedStatement ps = conn.prepareStatement("delete from STUDENT where SNO=?");){
            ps.setInt(1,sno);

            int i = ps.executeUpdate();
            return (i == 1 ? true : false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
