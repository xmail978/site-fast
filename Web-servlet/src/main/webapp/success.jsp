<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Hello World
<a href="/logout.html">退出登录</a>
<%--根据权限来判定   如果有menu:add权限，才能看的到menu--%>
<shiro:hasPermission name="menu:add">
    <a href="#">menu</a>###
</shiro:hasPermission>

<%--根据角色来判定   如果有admin这个角色，才可以看的到role--%>
<shiro:hasRole name="admin">
    <a href="#">role</a>
</shiro:hasRole>
</body>
</html>
