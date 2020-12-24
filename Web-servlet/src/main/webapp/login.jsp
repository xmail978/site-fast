<%--
  Created by IntelliJ IDEA.
  Date: 2019/6/12
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<form action="${pageContext.request.contextPath}/userServlet?op=userLogin" method="post">--%>
<form action="login" method="post">
    <table border="0">
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="userName"/>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                密码
            </td>
            <td>
                <input type="text" name="password"/>
            </td>
            <td></td>
        </tr>
        <tr align="right">
            <td colspan="2">
                <input type="submit" value="用户登录"/>
            </td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>