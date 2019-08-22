<%--
  Created by IntelliJ IDEA.
  User: 天份
  Date: 2019/8/16 0016 09:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品交易量统计-年度</title>
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
    option = {
        legend: {},
        tooltip: {},
        dataset: {
            dimensions: ['product', '2017', '2018', '2019'],
            source: [
                {product: '沙发', '2017': ${requestScope.arr1[0]}, '2018': ${requestScope.arr1[1]}, '2019': ${requestScope.arr1[2]}},
                {product: '床具', '2017': ${requestScope.arr2[0]}, '2018': ${requestScope.arr1[1]}, '2019': ${requestScope.arr1[2]}},
                {product: '柜架', '2017': ${requestScope.arr3[0]}, '2018': ${requestScope.arr1[1]}, '2019': ${requestScope.arr1[2]}},
                {product: '椅凳', '2017': ${requestScope.arr4[0]}, '2018': ${requestScope.arr1[1]}, '2019': ${requestScope.arr1[2]}}
            ]
        },
        xAxis: {type: 'category'},
        yAxis: {},
        // Declare several bar series, each will be mapped
        // to a column of dataset.source by default.
        series: [
            {type: 'bar'},
            {type: 'bar'},
            {type: 'bar'}
        ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
