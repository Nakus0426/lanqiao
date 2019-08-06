function loadDepartment(ele) {
    // 只要是在客户端(html,javascript)中地址的第一个“/” 表示的是localhost:8080
    // 在JSP/Servlet中的地址的第一个“/” 表示的位置是不同的：
    //   (a) 请求转发地址中的第一个“/” 表示的位置是：localhost:8080/my_context_path
    //   (b) 重定向地址中的第一个“/” 表示的位置是：localhost:8080
    $.getJSON('loadDeptments.jsp',{},function (res) {
        const deptSelect = $('#'+ele);
        // es6
        res.forEach(function(dept){
            const option = '<option value="' + dept.deptno+ '">'+ dept.dname + '</option>';
            console.log(option);
            deptSelect.append(option);
        });
    });
}


function loadManager(ele) {
    // 查找指定的下拉列表框
    const mgrSelect = $('#'+ele);

    // jquery底层的$.ajax()函数，$.get(), $.post(), $.load(), $.getJSON()都是对$.ajax()函数的高级实现
    $.ajax('loadManager.jsp',{
        // url: '',         // 请求的URL
        method: 'GET',      //HTTP 请求方法 (比如："POST", "GET ", "PUT")。
        data: {},           // 发送到服务器的数据。
        dataType: 'json',   //从服务器返回你期望的数据类型。
        success: function (res){
            res.forEach(function(emp){
                const option = '<option value="' + emp.empno + '">' + emp.ename + '</option>';
                mgrSelect.append(option);
            });
        }
    });
}