<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 天份
  Date: 2019/8/14 0014 16:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品交易量统计-季度</title>
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
    app.title = '极坐标系下的堆叠柱状图';

    option = {
        angleAxis: {
            type: 'category',
            data: ['春季', '夏季', '秋季', '冬季'],
            z: 20
        },
        radiusAxis: {
        },
        polar: {
        },
        series: [{
            type: 'bar',
            data: [<c:forEach var="item" items="${requestScope.arr1}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach>],
            coordinateSystem: 'polar',
            name: '沙发',
            stack: 'a'
        }, {
            type: 'bar',
            data: [<c:forEach var="item" items="${requestScope.arr2}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach>],
            coordinateSystem: 'polar',
            name: '床具',
            stack: 'a'
        }, {
            type: 'bar',
            data: [<c:forEach var="item" items="${requestScope.arr3}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach>],
            coordinateSystem: 'polar',
            name: '柜架',
            stack: 'a'
        }, {
            type: 'bar',
            data: [<c:forEach var="item" items="${requestScope.arr4}" varStatus="status">${item}<c:if test="${not status.last}">,</c:if> </c:forEach>],
            coordinateSystem: 'polar',
            name: '椅凳',
            stack: 'a'
        }],
        legend: {
            show: true,
            data: ['沙发', '床具', '柜架', '椅凳']
        }
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
