package com.lanqiao;


import com.lanqiao.dao.*;
import com.lanqiao.entity.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Application {
    static Scanner input = new Scanner(System.in);
    static String answer = null;
    static StudentDao studentDao = null;
    static ScoreDao scoreDao = null;
    static CourseDao courseDao = null;
    static TeacherDao teacherDao = null;

    public static void main(String[] args) {

        do {
            System.out.println("============学生管理系统==============");
            System.out.println("1、登录");
            System.out.println("2、退出");
            int choose = input.nextInt();
            switch (choose) {
                case 1:
                    System.out.print("请输入管理员账号：");
                    String mname = input.next();
                    System.out.print("请输入管理员密码：");
                    int mpassword = input.nextInt();

                    if (login(mname, mpassword)) {
                        manager();
                    } else {
                        System.out.println("密码或账号错误！");
                    }
                    break;
                case 2:
                    break;
                default:
                    break;
            }

            System.out.println("是否继续登录？（Y/N）");
            answer = input.next();

        } while (answer.equalsIgnoreCase("y"));
        System.out.println("欢迎下次使用！");
    }


    /**
     * 登录
     *
     * @param mname     用户输入的账号
     * @param mpassword 用户输入的密码
     * @return 登录是否成功
     */
    static boolean login(String mname, int mpassword) {
        Connection conn = JdbcUtil.getConnection();
        ResultSet rs = null;

        try (PreparedStatement ps = conn.prepareStatement("select MNAME from MANAGER")) {
            rs = ps.executeQuery();
            while (rs.next()) {
                String mname1 = rs.getString("mname");

                if (mname.equals(mname1)) {
                    try (PreparedStatement ps1 = conn.prepareStatement("select MPASSWORD from MANAGER where MNAME = ?")) {
                        ps1.setString(1, mname);
                        ResultSet rs1 = ps1.executeQuery();

                        while (rs1.next()) {
                            int mpassword1 = rs1.getInt("mpassword");
                            return (mpassword == mpassword1 ? true : false);
                        }

                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    /**
     * 管理操作主界面
     */
    static void manager() {
        do {
            System.out.println("============欢迎使用============");
            System.out.println("1、查询学生信息");
            System.out.println("2、添加学生信息");
            System.out.println("3、删除学生信息");
            System.out.println("4、修改学生信息");
            System.out.println("5、查询教师信息");
            System.out.println("6、添加教师信息");
            System.out.println("7、查询课程信息");
            int choose = input.nextInt();

            switch (choose) {
                case 1:
                    studentSelectManager();
                    break;
                case 2:
                    studentAddManager();
                    break;
                case 3:studentDelecte();
                    break;
                case 4:studentUpdate();
                    break;
                case 5:teacherSelect();
                    break;
                case 6:teacherAdd();
                    break;
                case 7:courseSelect();
                    break;
                default:
                    break;
            }

            System.out.println("是否继续使用本系统？（Y/N）");
            answer = input.next();

        } while (answer.equalsIgnoreCase("y"));
        System.out.println("欢迎下次使用本系统！");
    }


    /**
     * 学生信息添加操作
     */
    static void studentAddManager() {
        do {
            System.out.println("============请选择需要添加的内容============");
            System.out.println("1、添加学生信息");
            System.out.println("2、添加成绩成绩");
            int choose = input.nextInt();

            switch (choose) {
                case 1:
                    studentAdd();
                    break;
                case 2:
                    scoreAdd();
                    break;
                default:
                    break;
            }

            System.out.println("是否继续添加？（Y/N）");
            answer = input.next();

        } while (answer.equalsIgnoreCase("y"));
        System.out.println("欢迎下次使用添加功能！");
    }


    /**
     * 学生查询管理操作
     */
    static void studentSelectManager() {
        do {
            System.out.println("============请选择需要查询的内容============");
            System.out.println("1、查询学生信息");
            System.out.println("2、查询学生成绩");
            int choose = input.nextInt();

            switch (choose) {
                case 1:
                    studentSelect();
                    break;
                case 2:
                    scoreSlect();
                    break;
                default:
                    break;
            }

            System.out.println("是否继续查询？（Y/N）");
            answer = input.next();

        } while (answer.equalsIgnoreCase("y"));
        System.out.println("欢迎下次使用查询功能！");
    }


    /**
     * 添加学生信息
     */
    static void studentAdd() {
        studentDao = new StudentDao();

        System.out.print("请输入学号：");
        int sno = input.nextInt();
        System.out.print("请输入姓名：");
        String sname = input.next();
        System.out.print("请输入性别：");
        String sex = input.next();
        System.out.print("请输入年级：");
        String grade = input.next();
        System.out.print("请输入学院：");
        String academy = input.next();
        System.out.print("请输入电话：");
        int phone = input.nextInt();

        if (studentDao.save(new Student(sno, sname, sex, grade, academy, phone))) {
            System.out.println("添加成功！");
        } else {
            System.out.println("添加失败！");
        }
    }


    /**
     * 添加成绩信息
     */
    static void scoreAdd() {
        scoreDao = new ScoreDao();

        System.out.print("请输入课程号：");
        String cno = input.next();
        System.out.print("请输入学号：");
        int sno = input.nextInt();
        System.out.print("请输入成绩：");
        int score = input.nextInt();

        if (scoreDao.save(new Score(cno, sno, score))) {
            System.out.println("添加成功！");
        } else {
            System.out.println("添加失败！");
        }
    }


    /**
     * 查询学生信息
     */
    static void studentSelect() {
        studentDao = new StudentDao();

        for (Student student : studentDao.selectAll()) {
            System.out.println(student);
        }
    }


    /**
     * 查询学生成绩
     */
    static void scoreSlect() {
        scoreDao = new ScoreDao();

        System.out.print("请输入学号：");
        int sno = input.nextInt();
        for (ScoreDetail detail : scoreDao.select(sno)) {
            System.out.println(detail);
        }
    }


    /**
     * 删除学生信息
     */
    static void studentDelecte() {
        studentDao = new StudentDao();
        System.out.print("请输入学号：");
        int sno = input.nextInt();
        if (studentDao.delete(sno)) {
            System.out.println("删除成功！");
        }else{
            System.out.println("删除失败！");
        }
    }


    /**
     * 修改学生信息
     */
    static void studentUpdate(){
        studentDao=new StudentDao();

        System.out.print("请输入需要修改的学号：");
        int sno = input.nextInt();
        System.out.print("请输入年级：");
        String grade = input.next();
        System.out.print("请输入学院呢：");
        String academy = input.next();
        System.out.print("请输入电话：");
        int phone = input.nextInt();

        if (studentDao.update(sno, grade, academy, phone)) {
            System.out.println("修改成功！");
        }else{
            System.out.println("修改失败！");
        }
    }


    /**
     * 查询教师信息
     */
    static void teacherSelect(){
        teacherDao=new TeacherDao();

        for (Teacher teacher : teacherDao.selectAll()) {
            System.out.println(teacher);
        }
    }


    /**
     * 添加教师信息
     */
    static void teacherAdd(){
        teacherDao=new TeacherDao();

        System.out.print("请输入教师编号：");
        int tno = input.nextInt();
        System.out.print("请输入姓名：");
        String tname = input.next();
        System.out.print("请输入密码：");
        int tpassword = input.nextInt();
        System.out.print("请输入职称：");
        String job = input.next();

        if (teacherDao.save(new Teacher(tno,tname,tpassword,job))) {
            System.out.println("添加成功！");
        }else {
            System.out.println("添加失败！");
        }
    }


    /**
     * 查询课程信息
     */
    static void courseSelect(){
        courseDao = new CourseDao();

        for (Course course : courseDao.select()) {
            System.out.println(course);
        }
    }
}
