<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>登录</title>
    <%pageContext.setAttribute("ctx", request.getContextPath());%>
    <script>var _ctx = '<%=request.getContextPath()%>'</script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/_osdp/css/login.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/_osdp/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/js/layer.1.9.3/skin/layer.css"/>
</head>
<body>
<div class="warp">
    <div class="logo">
        <img src="<%=request.getContextPath()%>/static/_osdp/images/logo2.png"/>
    </div>
    <div class="login">
        <p>用户登录</p>
        <div class="list-item">
            <span><img src="${ctx}/static/_osdp/images/preson.png"/></span>
            <input type="text" placeholder="请输入账号" id="username"/>
        </div>
        <div class="list-item" style="margin-bottom: 39px;">
            <span><img src="${ctx}/static/_osdp/images/mima.png"/></span>
            <input type="password" placeholder='请输入密码' id="password"/>
        </div>
        <button id="submit">登录</button>
    </div>
</div>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/js/layer.1.9.3/layer.js"></script>
<script type="text/javascript">
    var username = document.getElementById('username');
    var password = document.getElementById('password');

    // 登录
    $('#submit').on('click', function () {
        var params = {};
        params.username = username.value;
        params.password = password.value;
        if (params.username == '') {
            layer.tips('请输入账号!', '#username', {
                time: 1500
            });
            username.focus();
            return;
        }

        if (params.password == '') {
            layer.tips('请输入密码!', '#password', {
                time: 1500
            });
            return;
        }

        $.post(_ctx + '/loginUser/login', params, function (result) {
            var message = result.message;
            var state = result.state;
            if (state == 'error') {
                layer.tips(message, '#username', {//登录认证失败!
                    time: 3500
                });
                username.focus();
            } else if (state == 'success') {//登录认证成功!
                location.href = _ctx + '/loginUser/index';
            }
        });
    });


    // 获得焦点，清除提示文字
    $('#username').focus(function () {
        if ($('#username').attr('placeholder')) {
            $('#username').attr('placeholder', '');
        }
    });
    $('#password').focus(function () {
        if ($('#password').attr('placeholder')) {
            $('#password').attr('placeholder', '');
        }
    });

    // 失去焦点，显示提示文字
    $('#username').blur(function () {
        if ($.trim($('#username').val()) == '') {
            $('#username').val('');
            $('#username').attr('placeholder', '请输入账号');
        }
    });
    $('#password').blur(function () {
        if ($('#password').val() == '') {
            $('#password').attr('placeholder', '请输入密码');
        }
    });
</script>
</body>
</html>









