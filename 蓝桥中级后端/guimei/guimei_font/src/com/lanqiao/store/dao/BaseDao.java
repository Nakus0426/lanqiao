package com.lanqiao.store.dao;

import com.lanqiao.store.commons.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;

/**
 * @Author 天份
 * @Date 2019/8/10 0010 22:06
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class BaseDao {

    protected QueryRunner runner = new QueryRunner(JdbcUtil.buildDataSource(), true);
}
