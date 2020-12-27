<%@ page import="org.sccba.system.util.CacheUtils" %>
<%@ page import="org.sccba.system.login.model.LoginUser" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
<%@ page import="com.alibaba.fastjson.JSON" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>详情页面</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/static/_osdp/css/tyc.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/bootstrap.3.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/js/layer.1.9.3/skin/layer.css"/>
    <link rel="stylesheet" href="${ctx}/static/_osdp/css/la-menu.css">
    <style>
        /*排除左侧菜单后主体区域左移*/
        .layui-layout-admin .layui-body {
            top: 120px !important;
            bottom: 0px !important;
            /*left: 20% !important;*/
            /*border: 1px solid #e6e6e6;*/
            /*width: 100%!important;*/
            min-width: 1500px;
            /*max-width: 1700px;*/
            /*position: fixed!important;*/
        }

        .span_wrap {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            display: inline-block;
            vertical-align: middle;
            width: 1000px;
        }

        .span_wrap2 {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            display: inline-block;
            vertical-align: middle;
            width: 500px;
        }

        /*div冻结样式*/
        /*  * {
              margin: 0;
              padding: 0;
          }*/
        .box {
            height: 50px;
            /*background: #ccc;*/
            width: 100%;
        }


        .layui-nav {
            position: relative;
            padding: 0 20px;
            background-color: #fff;
            color: #fff;
            border-radius: 2px;
            font-size: 0;
            box-sizing: border-box;
        }
    </style>
<%
    LoginUser loginUser = (LoginUser) CacheUtils.get("loginUser");
    JSON user = (JSON)JSONObject.toJSON(loginUser);
%>
    <script type="text/javascript">
        var loginUser = <%=user%>;
    </script>
</head>
<body class="layui-layout-body" style="min-width: 1700px;overflow: auto">
<div class="layui-layout layui-layout-admin">

    <!--头部文件-->
    <jsp:include page="../layout/header1.jsp"></jsp:include>

    <div class="layui-body">

        <div class="panel-body">
            <div style="width: 100px;">
                <img src="${ctx}/static/_osdp/image_logo/574332.png" style="margin-left: 50%;width: 100px; height: 100px;"/>
            </div>
            <div style="width: 70%;height: 95%;margin-top: -100px;margin-left: 200px">
                <table frame="void">
                    <tr>
                        <td style="width: 50%;border: 0;!important;">
                            <span style="font-size: 25px">${company.COMPANY_NAME}</span>
                            <span>
                                <%--<a style="margin-bottom: 7px;margin-left: 10px;" class="btn-m -ms btn-claim">我要认证</a>--%>
                            </span>
                        </td>
                        <td style="width: 50%;border: 0;!important;">
                            <ul class="nav nav-pills">
                                <li><a href="#">导出</a></li>
                                <li><a href="#">加入收藏</a></li>
                                <li><a href="#">加入定制</a></li>
                                <li>
                                    <a href="#">
                                        加入监控
                                        <%-- <span onclick="toogleWatch()">
                                             <a style="margin-bottom: 7px;margin-left: 10px;" class="btn -ms btn-primary">已监控</a>
                                         </span>--%>
                                    </a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: 0;!important;">
                            <div class="tag num-opening" style="margin-left: 0px;">在业</div>
                            <div class="tag tag-new-category -bound tag-mr">高新企业</div>
                        </td>
                        <td style="border: 0;!important;"></td>
                    </tr>
                </table>

                <div style="background-color: #f5f5f5;width: 98%;">
                    <table style="border-collapse: separate;border-spacing: 0px 10px;font-size: 16px;background-color: #f5f5f5;margin-top: 5px;min-width: 850px;">
                        <tr>
                            <td style="width: 40%;border: 0;!important;"><span>联系电话：</span><span id="tel">${company.REG_PHONE}</span><span>&nbsp;&nbsp;&nbsp;<a
                                    href="#">编辑</a></span><span>&nbsp;&nbsp;&nbsp;<a href="#">查看更多</a></span></td>
                            <td style="width: 50%;border: 0;!important;"><span>邮箱：</span><span id="email">${company.REG_EMAIL}</span><span>&nbsp;&nbsp;&nbsp;<a
                                    href="#">查看更多</a></span></td>
                            <td style="width: 10%;border: 0;!important;"></td>
                        </tr>
                        <tr>
                            <td style="border: 0;!important;"><span>网址：</span><span><a href="#" id="net">${company.REG_NET}</a></span></td>
                            <td style="border: 0;!important;"><span>地址：</span><span class="span_wrap2" id="arrt">${company.REG_ATTR}</span></td>
                            <td style="border: 0;!important;"><span onclick="attrDetail('${company.REG_ATTR}')">&nbsp;&nbsp;&nbsp;<a
                                    href="#">详情</a></span></td>
                        </tr>
                        <tr>
                            <td style="border: 0;!important;" colspan="2"><span>简介：</span><span class="span-fon span_wrap"
                                                                  id="inst">${company.INSTROD}</span></td>
                            <td style="border: 0;!important;"><span onclick="instrDetail('${company.INSTROD}')">&nbsp;&nbsp;<a
                                    href="#">详情</a></span></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="panel panel-defaule" style="margin-left: 3%;">
            <span class="span-font">更新时间：</span> <span class="span-font" id="time">${company.NEWEST_TIME}</span>
            <a href="#" id="refresh" onclick="refresh('${company.ID}');">刷新</a>
        </div>

        <br/><br/>
        <div class="box">
            <div class="info">
                <ul class="list-menu" id="list-menu">

                    <%--<li>公司背景
                        <ul><a href="#">
                            <li>分治</li>
                        </a> <a href="#">
                            <li>贪心</li>
                        </a> <a href="#">
                            <li>链表</li>
                        </a> <a href="#">
                            <li>搜索</li>
                        </a> <a href="#">
                            <li>字符串</li>
                        </a> <a href="#">
                            <li>动态规划</li>
                        </a> <a href="#">
                            <li>图论</li>
                        </a></ul>
                    </li>
                    <li>司法风险 <span class="badge">3</span>
                        <ul><a href="#">
                            <li>简单</li>
                        </a> <a href="#">
                            <li>中等</li>
                        </a> <a href="#">
                            <li>很难</li>
                        </a> <a href="#">
                            <li>超难</li>
                        </a></ul>
                    </li>
                    <li>经营风险
                        <ul><a href="#">
                            <li>线性结构</li>
                        </a> <a href="#">
                            <li>树结构</li>
                        </a></ul>
                    </li>
                    <li>公司发展
                        <ul><a href="#">
                            <li>线性结构</li>
                        </a> <a href="#">
                            <li>树结构</li>
                        </a></ul>
                    </li>
                    <li>经营状况
                        <ul><a href="#">
                            <li>线性结构</li>
                        </a> <a href="#">
                            <li>树结构</li>
                        </a></ul>
                    </li>
                    <li>知识产权
                        <ul><a href="#">
                            <li>线性结构</li>
                        </a> <a href="#">
                            <li>树结构</li>
                        </a></ul>
                    </li>
                    <li>历史信息
                        <ul><a href="#">
                            <li>线性结构</li>
                        </a> <a href="#">
                            <li>树结构</li>
                        </a></ul>
                    </li>--%>
                </ul>
            </div>
        </div>


       <%-- <ul class="layui-nav">
            <li class="layui-nav-item"><span style="font-size: 18px;color: black;">公司背景</span></li>
            <span class="layui-nav-bar" style="left: 15px; top: 55px; width: 82px; opacity: 1;background-color: #f59900"></span>
        </ul>--%>

        <!--公司背景文件-->
        <jsp:include page="./companyBj.jsp"></jsp:include>


        <%--<ul class="nav nav-tabs" style="background-color: #fff;!important;">
            <li class="active">
                <a href="#companyBj" data-toggle="tab">
                    公司背景
                </a>
            </li>
            <li>
                <a href="#bjContent" data-toggle="tab">
                    经济资本
                </a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content" >
            <div id="companyBj" class="tab-pane active">
                <!--公司背景文件-->
                <jsp:include page="./companyBj.jsp"></jsp:include>
            </div>
            <div id="bjContent" class="tab-pane">
                <div id="economic" style="width:1600px;height:650px;"></div>
            </div>
        </div>--%>
    </div>
</div>


<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/bootstrap.3.1/js/bootstrap.min.js"></script>
<script src="${ctx}/static/js/layer.1.9.3/layer.js"></script>
<script src="${ctx}/static/ronge/detail.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

    $(function () {

    });


</script>
</body>
</html>
