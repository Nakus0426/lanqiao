package com.lanqiao.guimei.controller;


import com.lanqiao.guimei.dao.VendorDao;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class VendorController {

    @RequestMapping("/loadVen")
    public void lodeVendor( HttpServletResponse response) throws IOException {
                String json = new VendorDao().load();
                response.getWriter().write(json);
    }
}
