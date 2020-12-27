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
        background-color: #f59900;
    }

    /*字体颜色修改*/
    .layui-nav .layui-nav-item a {
        display: block;
        padding: 0 20px;
        color: #000000;
        /*color: rgba(0, 0, 0, .7); */
        transition: all .3s;
        -webkit-transition: all .3s;
    }

    /*菜单右移*/
    .layui-layout-left {
        position: absolute !important;
        left: auto;
        right: 100px;
        top: 25%;
    }
    /*中间查询*/
    .layui-layout-middle {
        position: absolute !important;
        left: 40%;
        right: auto;
        top: 15%;
    }
    /*左侧logo*/
    .layui-layout-admin .layui-logo {
        position: relative;
        width: 600px;
        height: 120px;
        border: none;
    }
    /*左侧logo*/
    .img {
        border: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
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
    <div class="layui-logo" style="width: 30%">
        <%--<a href="javascript:void(0)" onclick="homePage()"> --%>
        <img id="logoImg" class="img" src="${ctx}/static/_osdp/images/logo2.png"  alt="logo">
        <%--</a>--%>
    </div>
    <div class="layui-layout-middle" style="width: 30%">
        <%--<div class="layui-nav-item">--%>
            <div>
                <button id="company" type="button" class="layui-btn" style="background-color: transparent;border: 0px">查公司</button>
                <button id="person" type="button" class="layui-btn" style="background-color: transparent;border: 0px">查个人</button>
            </div>
            <div style="width: 350px">
                <input id="search" type="text" name="title" placeholder="请输入查询内容" value="${search}" autocomplete="off" class="layui-input">
                <button id="searchBtn" type="button" class="layui-btn" >查</button>
            </div>
        <%--</div>--%>
    </div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left" style="width: 30%">
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
    <ul class="layui-nav layui-layout-right" style="width: 10%">
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
