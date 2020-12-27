<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<style>
    /*头部样式*/
    .layui-header {
        z-index: 1000;
        height: 120px;
    }

    /*头部颜色修改*/
    .layui-layout-admin .layui-header {
        /*background-color: #f59900;*/
        background-color: transparent;
    }

    /*字体颜色修改*/
    .layui-nav .layui-nav-item a {
        display: block;
        padding: 0 20px;
        /*color: #000000;*/
        /*color: #ffffff;*/
        /*color: rgba(0, 0, 0, .7); */
        transition: all .3s;
        -webkit-transition: all .3s;
    }

    /*菜单右移*/
    .layui-layout-left {
        position: absolute !important;
        left: auto;
        right: 200px;
        top: 25%;
    }

    /*左侧logo*/
    .layui-layout-admin .layui-logo {
        position: relative;
        width: 600px;
        height: 120px;
        border: none;
    }
    /*左侧logo*/
    img {
        border: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        background-color: rgba(255,255,255,0.4);
    }
    /*退出居中*/
    .layui-layout-right {
        position: absolute !important;
        right: 0;
        top: 25%;
    }
    /*查询框和按钮不要换行*/
    .layui-input, .layui-textarea {
         display: inline;
        width: 70%;
         /*padding-left: 10px; */
    }
    .layui-btn {
        margin-bottom: 2px;
    }
</style>

<div class="layui-header">
    <div class="layui-logo">
        <%--<a href="javascript:void(0)" onclick="homePage()"> --%>
        <img id="logoImg" src="${ctx}/static/_osdp/images/logo2.png"  alt="logo">
        <%--</a>--%>
    </div>

    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="">收藏夹</a></li>
        <li class="layui-nav-item"><a href="">监控管理</a></li>
        <li class="layui-nav-item"><a href="">定制管理</a></li>
        <li class="layui-nav-item"><a href="">查询历史</a></li>
        <li class="layui-nav-item">
            <a href="javascript:;">系统管理</a>
            <dl class="layui-nav-child">
                <dd><a href="">邮件管理</a></dd>
                <dd><a href="">消息管理</a></dd>
                <dd><a href="">授权管理</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
        <%--<li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                贤心
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>--%>
        <li class="layui-nav-item"><a href="${ctx}/loginUser/logout">退了</a></li>
    </ul>
</div>
