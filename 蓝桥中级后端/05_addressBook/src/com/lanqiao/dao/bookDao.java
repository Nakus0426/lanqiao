package com.lanqiao.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class bookDao {

    /**
     * 查询所有联系人
     * @param inUserName
     * @return List<Book>
     */
    public List<Book> selectAllContact(String inUserName) {
        try (Connection conn = JdbcUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("select NAME,SEX,PHONE,MOBILEPHONE from CONTACTS where USERID=(select USERID from USERS where USERNAME=?)");
            ps.setString(1,inUserName);
            ResultSet rs = ps.executeQuery();

            ResultSetHandler<Book> rsh = new ResultSetHandler<>();
            List<Book> books = rsh.toBeanList(rs, Book.class);
            return books;
        } catch (SQLException e) {
            System.err.println("查询失败"+e.getMessage());
        }
        return null;
    }

    /**
     * 按关系查询联系人
     * @param inUserName
     * @param inRelation
     * @return List<Book>
     */
    public List<Book> seletByRelation(String inUserName,Integer inRelation){
        try (Connection conn = JdbcUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("select NAME,SEX,PHONE,MOBILEPHONE from CONTACTS where USERID=(select USERID from USERS where USERNAME=?)" +
                    " and RELATION=?");
            ps.setString(1,inUserName);
            ps.setInt(2,inRelation);
            ResultSet rs = ps.executeQuery();

            ResultSetHandler<Book> rsh = new ResultSetHandler<>();
            List<Book> books = rsh.toBeanList(rs, Book.class);
            return books;
        } catch (SQLException e) {
            System.err.println("查询失败"+e.getMessage());
        }
        return null;
    }

    /**
     * 增加联系人
     * @param inbook
     * @return boolean
     */
    public boolean addContact(Book inbook){
        try (Connection conn = JdbcUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("insert into CONTACTS values (CONTACTS_SEQ.nextval,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,inbook.getName());
            ps.setString(2,inbook.getSex());
            ps.setString(3,inbook.getPhone());
            ps.setString(4,inbook.getAddress());
            ps.setString(5,inbook.getMobilephone());
            ps.setString(6,inbook.getCompany());
            ps.setString(7,inbook.getComphone());
            ps.setString(8,inbook.getComaddress());
            ps.setInt(9,inbook.getRelation());
            ps.setString(10,inbook.getUserid());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            System.err.println("增加失败"+e.getMessage());
        }
        return false;
    }
}
