
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<div style="height: 100%;">
    <div style="background:#3367d6;height: 30%;font-size: 50px;font-family: 宋体;font-weight: bold;">
        <p style="padding-top: 8%; margin-left: 45%;">融E查</p>
    </div>
    <div style="background: #f59900;height: 70%">
        <div style="padding-top: 10%;margin-left: 37%;">
           <%-- &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <span style="font-size: 20px;">查公司</span>
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <span style="font-size: 20px;">查个人</span>--%>
            <button id="company" type="button" class="layui-btn" style="background-color: transparent;border: 0px;color: #0C0C0C">查公司</button>
            <button id="person" type="button" class="layui-btn" style="background-color: transparent;border: 0px;color: #0C0C0C">查个人</button>
            <br/><br/>
            <input id="search" style="height: 40px;width: 35%"><input id="searchBtn" class="layui-btn" style="height: 39.5px;width: 100px;margin-bottom: 2.5px;" type="button" value="查"/>
        </div>
    </div>
</div>
