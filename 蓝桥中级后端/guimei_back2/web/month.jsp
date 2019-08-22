<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 天份
  Date: 2019/8/16 0016 09:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品交易量统计-月度</title>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>


</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>

<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    app.title = '堆叠柱状图';

    option = {
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            data:['三人沙发','双人沙发','单人沙发','大三人沙发','床','床垫','床品4件套','被芯','COSMO', '置物具', '书柜*书架', '电视柜', '座椅', '坐墩', '优闲椅', '凳子']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                data : ['一月','二月','三月','四月','五月','六月','七月', '八月', '九月', '十月', '十一月', '十二月']
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'三人沙发',
                type:'bar',
                stack: '沙发',
                data:[<c:forEach var="item" items="${requestScope.s1}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]

            },
            {
                name:'双人沙发',
                type:'bar',
                stack: '沙发',
                data:[<c:forEach var="item" items="${requestScope.s2}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'单人沙发',
                type:'bar',
                stack: '沙发',
                data:[<c:forEach var="item" items="${requestScope.s3}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'大三人沙发',
                type:'bar',
                stack: '沙发',
                data:[<c:forEach var="item" items="${requestScope.s4}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'床',
                type:'bar',
                stack: '床具',
                data:[<c:forEach var="item" items="${requestScope.s5}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'床垫',
                type:'bar',
                stack: '床具',
                data:[<c:forEach var="item" items="${requestScope.s6}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'床品4件套',
                type:'bar',
                stack: '床具',
                data:[<c:forEach var="item" items="${requestScope.s7}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'被芯',
                type:'bar',
                stack: '床具',
                data:[<c:forEach var="item" items="${requestScope.s8}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'COSMO',
                type:'bar',
                stack: '柜架',
                data:[<c:forEach var="item" items="${requestScope.s9}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'置物具',
                type:'bar',
                stack: '柜架',
                data:[<c:forEach var="item" items="${requestScope.s10}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'书柜*书架',
                type:'bar',
                stack: '柜架',
                data:[<c:forEach var="item" items="${requestScope.s11}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'电视柜',
                type:'bar',
                stack: '柜架',
                data:[<c:forEach var="item" items="${requestScope.s12}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'座椅',
                type:'bar',
                stack: '椅凳',
                data:[<c:forEach var="item" items="${requestScope.s13}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'坐墩',
                type:'bar',
                stack: '椅凳',
                data:[<c:forEach var="item" items="${requestScope.s14}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'优闲椅',
                type:'bar',
                stack: '椅凳',
                data:[<c:forEach var="item" items="${requestScope.s15}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            },
            {
                name:'凳子',
                type:'bar',
                stack: '椅凳',
                data:[<c:forEach var="item" items="${requestScope.s16}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach> ]
            }
        ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
