/**
 * @desc 地址详情
 * @param id
 */
function attrDetail(value) {
    var area = ['500px', '200px'];
    var title = '<div style="text-align: center">地址</div>';
    var content = '<div>' + value + '</div>';
    openWin(area, title, content);
}

function instrDetail(value) {
    var area = ['500px', '200px'];
    var title = '<div style="text-align: center">企业简介</div>';
    var content = '<div>' + value + '</div>';
    openWin(area, title, content);
}


/**
 * @desc 弹框
 * @param area
 * @param title
 * @param content
 */
function openWin(area, title, content) {
    layer.open({
        type: 1//page层类型
        , area: area//大小['500px','300px']
        , title: title
        , shade: 0.6//遮罩透明度
        , anim: 5//动画形式
        , content: content
    });
}

/**
 * @desc 刷新数据
 */
function refresh(id) {
    $.post(_ctx + '/search/toDetails.do', {'id': id}, function (result) {
        // if (result == 'SUCCESS') {
        $('#tel').text(result.REG_PHONE);
        $('#email').text(result.REG_EMAIL);
        $('#net').text(result.REG_NET);
        $('#arrt').text(result.REG_ATTR);
        $('#inst').text(result.INSTROD);
        $('#time').text(result.NEWEST_TIME);
            layer.tips('刷新成功!', '#refresh', {
                time: 1500,
                tips: [3, '#4b5fff']
            });
        // }
    });
}

/**
 * @desc 中间冻结div菜单
 */
function midelMenu() {
    /* **********************冻结div开始***************************** */
    var oInfo = $(".info");
    var oTop = $(".box").offset().top;
    var sTop = 0;
    $('.layui-body').scroll(function () {
        sTop = $(this).scrollTop();
        // oInfo.text(sTop + "-" + oTop); //这一句 只是为了看看数据 没有多大的用处
        if (sTop >= 325) {
            // $(".box").css({"position": "fixed", "top": "121px"});
            $(".box").css({"position": "sticky", "top": "15px"});
        } else {
            $(".box").css({"position": "static"});
        }
    });

    /* **********************冻结div结束***************************** */


    $.post(_ctx + '/detail/middleMenu.do', {'group': 'detail'}, function (result) {
        var roles = loginUser.roles;
        if (roles && roles.length > 0) {
            for (var i in roles) {
                var role = roles[i];
                if (role.special == 'detail_middle') {
                    var permissions = role.permissions;
                    if (permissions && permissions.length > 0) {
                        for (var j in permissions) {
                            if (permissions[j].parentId == 0) {//第一级菜单

                                if (permissions[j].name != '司法风险') {
                                    $('#list-menu').append("<li>" + permissions[j].name + "<ul></ul></li>");
                                } else {
                                    $('#list-menu').append("<li>" + permissions[j].name + "<span class='badge'>3</span><ul></ul></li>");
                                }


                            } else {//第二级菜单
                                var parentId = permissions[j].parentId;
                                var child = '';
                                child += '<a href="' + permissions[j].url + '">' +
                                    '<li>' + permissions[j].name + '</li></a>';
                                $($('#list-menu').children('li')[Number(parentId - 1)]).children('ul').append(child);
                            }
                        }

                    }
                }
            }
        }

        /*if (result && result.length > 0) {
            for (var i in result) {
                var li = '';
                li += "<li>" + result[i].name + "<li>";
                $('#list-menu').append(li);
            }
        }*/
    });


}

midelMenu();
