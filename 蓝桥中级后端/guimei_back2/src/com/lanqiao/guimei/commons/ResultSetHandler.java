package com.lanqiao.guimei.commons;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 将查询结果集的数据组装成相应的POJO实体
 *
 * @author 张建平 on 2019/4/24 20:09
 */
public class ResultSetHandler<T> { // new ResultSetHandler<Employee>().toBeanList(rs, Employee.class)

    /**
     * @param rs        结果集
     * @param type      实例类实例
     * @return
     */
    public List<T> toBeanList(ResultSet rs, Class<T> type) {
        /*
        分析：
        1. 首先将实体类中的所有属性：Class.getDeclareFields()
        2. 通过结果集元数据中的列名，将查询结果相应的列的值取出来。
        3. 将实体类的属性的名（Employee.ename）与结果集中相应的列进行反射赋值
            select ENAME from employee
        */

        //1. 首先将实体类中的所有属性
        Field[] fields = type.getDeclaredFields();
        //将所有的属性放入 Map<属性名,Field> 中
        Map<String, Field> fieldMap = new HashMap<>();
        for (Field field : fields) {
            // Map<"ENAME", ename属性对象>
            fieldMap.put(field.getName().toUpperCase(), field);
        }

        List<T> beanList = new ArrayList<>();
        try {
            //获得结果集元数据
            ResultSetMetaData metaData = rs.getMetaData();
            // 获得查询结果中的列数
            int columnCount = metaData.getColumnCount();
            // 每一行
            while (rs.next()) {
                // 给实体属性赋值
                T target = type.newInstance();
                // 每一列
                for (int i = 1; i <=columnCount ; i++) {
                    // 获得列的标题
                    String columnLabel = metaData.getColumnLabel(i);
                    // 检查此列是否有对应的属性存在
                    if (fieldMap.containsKey(columnLabel)) {
                        // 通过列名从Map中获得对应的Field对象
                        Field field = fieldMap.get(columnLabel);
                        field.setAccessible(true);

                        //根据此属性的类型来调用相应的结果集方法，
                        // 如：String ename --> resultSet.getString()
                        Object value = null;
                        Class<?> fieldType = field.getType();
                        if(fieldType == String.class){ //Character
                            value = rs.getString(columnLabel);

                        }else if(fieldType==Byte.class || fieldType==Byte.TYPE){ // int
                            value = rs.getByte(columnLabel);

                        }else if(fieldType==Short.class || fieldType==Short.TYPE){ //
                            value = rs.getShort(columnLabel);

                        }else if(fieldType==Integer.class || fieldType==Integer.TYPE){ //
                            value = rs.getInt(columnLabel);

                        }else if(fieldType==Long.class || fieldType==Long.TYPE){ //
                            value = rs.getLong(columnLabel);

                        }else if(fieldType==Double.class || fieldType==Double.TYPE){ //
                            value = rs.getDouble(columnLabel);

                        }else if(fieldType==Float.class || fieldType==Float.TYPE){ //
                            value = rs.getFloat(columnLabel);

                        }else if(fieldType== java.util.Date.class || fieldType==java.sql.Date.class){ //
                            value = rs.getDate(columnLabel);

                        }else if(fieldType== java.sql.Time.class){ //
                            value = rs.getTime(columnLabel);

                        }else if(fieldType== Boolean.class || fieldType==Boolean.TYPE){ //
                            value = rs.getBoolean(columnLabel);
                        }

                        field.set(target, value);
                    } // end for
                } // end if
                beanList.add(target);
            } // end while
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }
        return beanList;
    }


    /**
     * 将查询结果的每一行封装成实体
     * @param rs
     * @param type
     * @return
     */
    public T toBean(ResultSet rs, Class<T> type){
        List<T> list = toBeanList(rs, type);
        return (list != null && list.size()>0 ? list.remove(0) : null);
    }
}
