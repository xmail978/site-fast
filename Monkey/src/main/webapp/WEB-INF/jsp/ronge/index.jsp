<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>主查询页面</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/js/layer.1.9.3/skin/layer.css"/>
    <style>
        /*排除左侧菜单后主体区域左移*/
        .layui-layout-admin .layui-body {
            top: 120px !important;
            bottom: 0px !important;
            left: 0px !important;
        }

        .search-box {
            position: fixed;
            width: 65%;
            height: 28%;
            /*left: 20%;*/
            /*top: 50%;*/
             margin-left: 31%;
            margin-top: 13%;
        }

    </style>
</head>
<body class="layui-layout-body" style="background: url('${ctx}/static/_osdp/images/index.png');height: 100%;width: 100%;background-size: 100% 99%;background-repeat: no-repeat;background-attachment: fixed">
<div class="layui-layout layui-layout-admin">

    <!--头部文件-->
    <jsp:include page="../layout/header.jsp"></jsp:include>

    <%--左侧文件--%>
    <%--<jsp:include page="../layout/left.jsp"></jsp:include>--%>
    <!--主体文件-->
    <%--<div class="layui-body">--%>
        <%--<jsp:include page="./main.jsp"></jsp:include>--%>
    <%--</div>--%>
    <%--底部文件--%>
    <%--<jsp:include page="../layout/footer.jsp"></jsp:include>--%>

    <div class="search-box">
        <div style="padding-top: 10%;">
            <button id="company" type="button" class="layui-btn" style="background-color: transparent;border: 0px;color: #7aff98;font-size: 20px;margin-left: 8%">查公司</button>
            <button id="person" type="button" class="layui-btn" style="background-color: transparent;border: 0px;color:#fff;font-size: 20px;margin-left: 8%">查个人</button>
            <br/><br/>
            <input id="search" style="height: 60px;width: 60%;font-size: 20px;">&nbsp;<input id="searchBtn" class="layui-btn" style="height: 65px;width: 80px;margin-bottom: 3.5px;background-color: #3366BF;font-size: 20px;" type="button" value="查"/>
        </div>
    </div>



</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/js/layer.1.9.3/layer.js"></script>
<script src="${ctx}/static/ronge/index.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
