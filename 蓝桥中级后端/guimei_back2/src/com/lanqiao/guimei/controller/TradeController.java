package com.lanqiao.guimei.controller;



import com.lanqiao.guimei.dao.TradeDao;
import com.lanqiao.guimei.vo.Page;
import com.lanqiao.guimei.vo.Trades;
import com.lanqiao.web.mvc.annotation.Controller;
import com.lanqiao.web.mvc.annotation.RequestMapping;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import static java.lang.System.out;

@Controller
public class TradeController {

    @RequestMapping("/page2")
    public String findForPage(HttpServletRequest request, HttpSession session){

        String trdNo = request.getParameter("trdNo");
        Trades trade = new Trades();
        trade.setTrdNo(trdNo);

        Page<Trades> tradePage = (Page< Trades>) session.getAttribute("tradePage");

        TradeDao tradeDao = new TradeDao();

        String pageNo = request.getParameter("pageNo");

        if (tradePage == null || StringUtils.isBlank(pageNo)){
            tradePage = new Page<Trades>();
            tradePage.setPageSize(8);
            tradePage.setPageNo(1);
            tradePage.setQueryObject(trade);
            // 统计总记录数
            tradePage.setTotalRow(tradeDao.countForPage(tradePage));
        } else {
            tradePage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("tradePage", tradePage);


        // 查询列表数据
        List<Trades> tradeList = tradeDao.queryl(tradePage);
        request.setAttribute("tradeList", tradeList);

        return "/tradePage.jsp";
    }





    @RequestMapping("/trade/update")
    public void updateTrades(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        String trdNo =request.getParameter("trdNo");
        String receiver = request.getParameter("receiver");
        String trdLoc = request.getParameter("trdLoc");
        String phone= request.getParameter("phone");
        Double tptalMoney  = Double.valueOf(request.getParameter("tptalMoney"));

        Trades trades = new Trades();

        trades.setTptalMoney(Double.valueOf(tptalMoney));
        trades.setPhone(phone);
        trades.setTrdLoc(trdLoc);
        trades.setReceiver(receiver);
        trades.setTrdNo(trdNo);
        out.println(trades);

        TradeDao tradeDao = new TradeDao();
        // 操作数据库做更新
        boolean updated = tradeDao.update(trades);

        if (updated) {
            response.getWriter().write("{\"result\": true}");
        } else {
            response.getWriter().write("{\"result\": false}");
        }
    }
    @RequestMapping("/trade/delete")
    public void delectTrade(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        String trdNo =request.getParameter("trdNo");


        Trades trades = new Trades();
        trades.setTrdNo(trdNo);


        // 操作数据库做更新
        boolean updated = new TradeDao().delect(trades);
        if (updated){

            response.getWriter().write("{\"result\": true}");

        }else{
            response.getWriter().write("{\"result\": true}");

        }
    }

    @RequestMapping("/page3")
    public String findForRecyclePage(HttpServletRequest request, HttpSession session, Trades trades){

        Page<Trades> tradePage = (Page< Trades>) session.getAttribute("tradePage");

        TradeDao tradeDao = new TradeDao();

        String pageNo = request.getParameter("pageNo");

        if (tradePage == null || StringUtils.isBlank(pageNo)){
            tradePage = new Page<Trades>();
            tradePage.setPageSize(3);
            tradePage.setPageNo(1);
            tradePage.setQueryObject(trades);
            // 统计总记录数
            tradePage.setTotalRow(tradeDao.countForRecyclePage(tradePage));
        } else {
            tradePage.setPageNo(Integer.valueOf(pageNo));
        }
        session.setAttribute("tradePage", tradePage);

        // 查询列表数据
        List<Trades> tradeList = tradeDao.findForRecyclePage(tradePage);
        request.setAttribute("tradeList", tradeList);

        return "/recyclePage.jsp";
    }

    @RequestMapping("/retrieve")
    public void retrieveTrade(HttpServletRequest request, HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, IOException {
        String trdNo =request.getParameter("trdNo");


        Trades trades = new Trades();
        trades.setTrdNo(trdNo);


        // 操作数据库做更新
        boolean updated = new TradeDao().retrieve(trades);
        if (updated){
            response.getWriter().write("{\"result\": true}");
        }else{
            response.getWriter().write("{\"result\": false}");
        }
    }

    @RequestMapping("/trade/delectretrieve")
    public void delectRetrieveTrade(HttpServletRequest request, HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, IOException {
        String trdNo =request.getParameter("trdNo");


        Trades trades = new Trades();
        trades.setTrdNo(trdNo);


        // 操作数据库做更新
        boolean updated = new TradeDao().delectRetrieve(trades);
        if (updated){
            response.getWriter().write("{\"result\": true}");
        }else{
            response.getWriter().write("{\"result\": false}");
        }
    }


}
