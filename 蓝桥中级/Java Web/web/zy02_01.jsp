<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zy02_01</title>
</head>
<body>
<center>
    <%
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH);
        int day = cal.get(Calendar.DAY_OF_MONTH);
        int hour = cal.get(Calendar.HOUR_OF_DAY);
        int min = cal.get(Calendar.MINUTE);
        int sec = cal.get(Calendar.SECOND);
        int week = cal.get(Calendar.DAY_OF_WEEK);

        if (hour >= 0 && hour < 12) {
            out.println("早上好！");
        }

        if (hour >= 12 && hour < 19) {
            out.println("下午好！");
        }

        if (hour >= 19 && hour < 24) {
            out.println("晚上好！");
        }

        out.print("<br>现在是："+year+"年"+month+"月"+day+"日<br>"+hour+"时"+min+"分"+sec+"秒  星期"+week);
    %>
</center>
</body>
</html>
