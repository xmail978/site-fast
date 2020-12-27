<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<style>
    /*排除左侧菜单后底部区域左移*/
    .layui-layout-admin .layui-footer {
        left: 0px;
    }
</style>
<div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
</div>