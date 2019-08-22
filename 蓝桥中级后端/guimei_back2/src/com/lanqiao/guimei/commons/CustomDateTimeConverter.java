package com.lanqiao.guimei.commons;

import org.apache.commons.beanutils.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CustomDateTimeConverter implements Converter {
    private static String[] patterns = new String[]{"yyyy年MM月dd日 hh:mm:ss",
            "yyyy-MM-dd HH:mm:ss",
            "yyyy/MM/dd HH:mm:ss",
            "yyyy-MM-dd",
            "yyyy年MM月dd日",
            "yyyyMMdd"};


    /**
     * @param type 转换的目标类型
     * @param value 要转换的值
     */
    @Override
    public Object convert(Class type, Object value) {
        if (value==null) {
            if (type == java.util.Date.class) {
                return new java.util.Date();
            } else if (type == java.sql.Date.class) {
                return new java.sql.Date(new Date().getTime());
            }
        } else {
            // 要转换的值非空
            String orgValue = value.toString();
            if (type == java.util.Date.class) {
                return toUtilDate(orgValue);

            } else if (type == java.sql.Date.class) {
                return toSqlDate(orgValue);
            }
        }
        return null;
    }

    /**
     * 转换成java.sql.Date
     * @param value 字符串
     * @return
     */
    private java.util.Date toUtilDate(String value){
        SimpleDateFormat sdf = null;
        for (String pattern  : patterns) {
            sdf = new SimpleDateFormat(pattern);
            try {
                return sdf.parse(value);
            } catch (ParseException e) {
                continue;
            }
        }
        return new Date();
    }

    /**
     * 转换成java.sql.Date
     * @param value 字符串
     * @return
     */
    private java.sql.Date toSqlDate(String value){
        Date d = toUtilDate(value);
        return new java.sql.Date(d.getTime());
    }
}

