<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>一级查询页面</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <style>
        /*排除左侧菜单后主体区域左移*/
        .layui-layout-admin .layui-body {
            top: 120px !important;
            bottom: 0px !important;
            left: 0px !important;
            width: 100%!important;
            min-width: 1700px;
            /*max-width: 1700px;*/
            /*position: fixed!important;*/
        }
    </style>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/bootstrap.3.1/css/bootstrap.min.css"/>
</head>
<body class="layui-layout-body" style="min-width: 1700px;overflow: auto">
<div class="layui-layout layui-layout-admin">

    <!--头部文件-->
    <jsp:include page="../layout/header1.jsp"></jsp:include>

    <%--左侧文件--%>
    <%--<jsp:include page="../layout/left.jsp"></jsp:include>--%>
    <!--主体文件-->
    <div class="layui-body">
        <jsp:include page="./first_main.jsp"></jsp:include>
    </div>
    <%--左侧文件--%>
    <%--<jsp:include page="../layout/footer.jsp"></jsp:include>--%>

</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/bootstrap.3.1/js/bootstrap.min.js"></script>
<script src="${ctx}/static/ronge/first.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
