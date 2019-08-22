package com.lanqiao.guimei.controller;


import com.lanqiao.guimei.dao.GuimeiAdminDao;
import com.lanqiao.guimei.vo.GuimeiAdmin;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;

/**
 * @author Marcy -- 马庆晓
 * created on 2019/8/14 16:44
 */
@Controller
public class GuimeiAdminController {

    Logger logger =Logger.getLogger(GuimeiAdmin.class);
    @RequestMapping("/login")
    public String adminlogin(HttpSession session,GuimeiAdmin guimeiAdmin){
        // 默认，请求转发
        // 重定向：redirect:/success.jsp

        GuimeiAdmin logAdmin = new GuimeiAdminDao().adminlogin(guimeiAdmin);
        if(logAdmin !=null){
            return "/index.jsp";
        }else {
            return "/login.html";
        }
    }


}
