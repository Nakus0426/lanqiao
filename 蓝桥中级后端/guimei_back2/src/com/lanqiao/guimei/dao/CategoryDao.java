package com.lanqiao.guimei.dao;


import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.vo.Category;
import com.lanqiao.guimei.vo.Page;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.commons.lang3.StringUtils;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    QueryRunner runner = new QueryRunner(true);

    public List<Category> query(Page<Category> page){
        //获取查询条件（对象） category
        Category category = page.getQueryObject();
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("select * from (select t.*,ROWNUM rn from (select big_ctgr_id bigCtgrId,ctgr_id ctgrId,ctgr_name ctgrName,big_ctgr bigCtgr from category where 1=1 ");
        if (category.getCtgrId() != null){
            sql.append(" and ctgr_id=?");
            param.add(category.getCtgrId());
        }
        if (category.getBigCtgrId() != null){
            sql.append(" and big_ctgr_id=?");
            param.add(category.getBigCtgrId());
        }
        if (StringUtils.isNoneBlank(category.getCtgrName())){
            sql.append(" and ctgr_name like ?");
            param.add("%"+category.getCtgrName()+"%");
        }
        if (StringUtils.isNoneBlank(category.getBigCtgr())){
            sql.append(" and big_ctgr like ?");
            param.add("%"+category.getBigCtgr()+"%");
        }
        sql.append(" ) t where ROWNUM<=?) where rn>=?");
        param.add(page.getLastIndex());
        param.add(page.getFirstIndex());
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn,sql.toString(),
                    new BeanListHandler<>(Category.class),param.toArray());
        } catch (SQLException e) {
            System.err.println("查询分类失败："+e);
        }
        return null;
    }

    public boolean insertCate(Category category){
        try (Connection conn = JdbcUtil.getConnection()) {
            int update = runner.update(conn, "insert into category values(?,?,cate_seq.nextval,?)",
                    category.getBigCtgrId(),category.getBigCtgr(),category.getCtgrName());
            return (update==1?true:false);
        } catch (SQLException e) {
            System.err.println("新增分类失败："+e);
        }
        return false;
    }

    public boolean updeteCate(Category category){
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("update category set ");
        if (category.getBigCtgrId() != null){
            sql.append(" big_ctgr_id=?,");
            param.add(category.getBigCtgrId());
        }
        if (StringUtils.isNoneBlank(category.getCtgrName())){
            sql.append(" ctgr_name=?,");
            param.add(category.getCtgrName());
        }
        if (StringUtils.isNoneBlank(category.getBigCtgr())){
            sql.append(" big_ctgr=?,");
            param.add(category.getBigCtgr());
        }
        // 去掉最后面的一个逗号
        sql.deleteCharAt(sql.lastIndexOf(","));
        sql.append(" where ctgr_id=?");
        param.add(category.getCtgrId());
        try (Connection conn = JdbcUtil.getConnection()) {
            int update = runner.update(conn, sql.toString(), param.toArray());
            return (update==1?true:false);
        } catch (SQLException e) {
            System.err.println("更新分类失败："+e);
        }
        return false;
    }

    public boolean deleteCate(Category category){
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("delete category where 1=1");
        if (category.getBigCtgrId()==null && category.getCtgrId()==null){
            //防止误删
            return false;
        }
        if (category.getBigCtgrId() != null){
            sql.append(" and big_ctgr_id=?");
            param.add(category.getBigCtgrId());
        }
        if (category.getCtgrId() != null){
            sql.append(" and ctgr_id=?");
            param.add(category.getCtgrId());
        }
        try (Connection conn = JdbcUtil.getConnection()) {
            int update = runner.update(conn, sql.toString(),param.toArray());
            return (update==1?true:false);
        } catch (SQLException e) {
            System.err.println("删除分类失败："+e);
        }
        return false;
    }

    public int queryCountForPageByCate(Category category){
        List param = new ArrayList();
        StringBuffer sql = new StringBuffer("select count(1) cnt from category where 1=1 ");
        if (category.getCtgrId() != null){
            sql.append(" and ctgr_id=?");
            param.add(category.getCtgrId());
        }
        if (category.getBigCtgrId() != null){
            sql.append(" and big_ctgr_id=?");
            param.add(category.getBigCtgrId());
        }
        if (StringUtils.isNoneBlank(category.getCtgrName())){
            sql.append(" and ctgr_name like ?");
            param.add("%"+category.getCtgrName()+"%");
        }
        if (StringUtils.isNoneBlank(category.getBigCtgr())){
            sql.append(" and big_ctgr like ?");
            param.add("%"+category.getBigCtgr()+"%");
        }
        try (Connection conn = JdbcUtil.getConnection()) {
            return runner.query(conn, sql.toString(), new ScalarHandler<BigDecimal>("cnt"),param.toArray()).intValue();
        } catch (SQLException e) {
            System.err.println("查询记录数失败："+e);
        }
        return 0;
    }

    public Category querySortById(Category category){
        try (Connection conn = JdbcUtil.getConnection()) {
            if (category.getCtgrId() != null){
                return runner.query(conn,"select big_ctgr_id bigCtgrId,ctgr_id ctgrId,ctgr_name ctgrName,big_ctgr bigCtgr " +
                        "from category where ctgr_id=?",new BeanHandler<>(Category.class),category.getCtgrId());
            }else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println("按id查询分类失败");
        }
        return null;
    }
}
