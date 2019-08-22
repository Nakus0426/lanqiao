package com.lanqiao.guimei.controller;

import com.lanqiao.guimei.dao.StockDao;
import com.lanqiao.guimei.dao.VendorDao;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@Controller
public class StockController {
    @RequestMapping("/loadStock")
    public void lodeStock( HttpServletResponse response) throws IOException {
        String json = new StockDao().load();
        response.getWriter().write(json);
    }
}
