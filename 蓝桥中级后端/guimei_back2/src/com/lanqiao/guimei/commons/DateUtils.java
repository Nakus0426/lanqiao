package com.lanqiao.guimei.commons;


import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 张建平 on 2019/7/30.
 */
public class DateUtils {

    static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    public static String format(Date date) {
        if (date != null){
            return sdf.format(date);
        }
        return "";
    }

}
