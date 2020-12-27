search();//查询


/*
 *@desc 点击行业类型事件
 */
$('#industry_type').on("show.bs.dropdown", function () {
    $.post(_ctx + '/company/industryType', {}, function (result) {
        $('#industry_type_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="clickIndustryType(\'' + result[i].ID + '\',\'' + result[i].TYPE_NAME + '\')"><a href="#">' + result[i].TYPE_NAME + '</a></li>';
        }
        $('#industry_type_ul').append(li);
    });
});

function clickIndustryType(id, name) {
    $('#industry_type_s').text(name);
    $('#industry_type_s').attr('title', name);
    $('input[name=industry_i]').val(id);
}


/*
 *@desc 点击企业类型事件
 */
$('#company_type').on("show.bs.dropdown", function () {
    $.post(_ctx + '/company/companyType', {}, function (result) {
        $('#company_type_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="clickCompanyType(\'' + result[i].TYPE_ID + '\',\'' + result[i].TYPE_NAME + '\')"><a href="#">' + result[i].TYPE_NAME + '</a></li>';
        }
        $('#company_type_ul').append(li);
    });
});

function clickCompanyType(id, name) {
    $('#company_type_s').text(name);
    $('input[name=company_type_i]').val(id);
}


/*
 *@desc 点击企业状态事件
 */
$('#company_state').on("show.bs.dropdown", function () {
    $.post(_ctx + '/company/companyState', {}, function (result) {
        $('#company_state_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="clickCompanyState(\'' + result[i].STATE_ID + '\',\'' + result[i].STATE_NAME + '\')"><a href="#">' + result[i].STATE_NAME + '</a></li>';
        }
        $('#company_state_ul').append(li);
    });
});

function clickCompanyState(id, name) {
    $('#company_state_s').text(name);
    $('input[name=company_state_i]').val(id);
}

/*
 *@desc 点击省份事件
 */
$('#province').on("show.bs.dropdown", function () {
    loadProvice();
});


/*
 *@desc 加载省份
 */
function loadProvice() {
    $.post(_ctx + '/area/provice', {}, function (result) {
        $('#province_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="loadCity(\'' + result[i].ID + '\',\'' + result[i].PROVINCE_NAME + '\')"><a href="#">' + result[i].PROVINCE_NAME + '</a></li>';
        }
        $('#province_ul').append(li);
    });


};

/*
 *@desc 加载城市
 */
function loadCity(provice, name) {
    $('#province_s').text(name);
    $('input[name=province_i]').val(provice);
    $('#city_s').text('市');

    $.post(_ctx + '/area/city', {'provice': provice}, function (result) {
        $('#city_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="loadArea(\'' + result[i].ID + '\',\'' + result[i].CITY_NAME + '\')"><a href="#">' + result[i].CITY_NAME + '</a></li>';
        }
        $('#city_ul').append(li);
    });
};

/*
 *@desc 加载行政区
 */
function loadArea(city, name) {
    $('#city_s').text(name);
    $('input[name=city_i]').val(city);
    $('#area_s').text('区');

    $.post(_ctx + '/area/area', {'city': city}, function (result) {
        $('#area_ul').empty();
        var li = '';
        for (var i in result) {
            li += '<li onclick="clickArea(\'' + result[i].ID + '\',\'' + result[i].AREA_NAME + '\')"><a href="#">' + result[i].AREA_NAME + '</a></li>';
        }
        $('#area_ul').append(li);
    });
};

/*
 *@desc 点击行政区
 */
function clickArea(id, name) {
    $('#area_s').text(name);
    $('input[name=area_i]').val(id);
}


$('#searchBtn').on('click', function () {
    search();
});

/*
 *@desc 查询
 */
function search() {
    var search = $('#search').val();
    var province = $('input[name=province_i]').val();
    var city = $('input[name=city_i]').val();
    var area = $('input[name=area_i]').val();
    var industry = $('input[name=industry_i]').val();
    var companyType = $('input[name=company_type_i]').val();
    var companyState = $('input[name=company_state_i]').val();

    var params = {};
    params.search = search;
    params.province = province;
    params.city = city;
    params.area = area;
    params.industry = industry;
    params.companyType = companyType;
    params.companyState = companyState;

    $.post(_ctx + '/search/firstSearch', params, function (result) {
        $('#company_list').empty();
        var div = '';
        for (var i in result) {
            div += '<div class="panel-body">\n' +
                '    <div style="width: 150px;margin-bottom: 10px;margin-top: 40px;">\n' +
                '        <img src=' + _ctx + ' "/static/_osdp/image_logo/' + result[i].COMPANY_LOGO + '" style="margin-left: 50%;width: 150px;height: 150px;"/>\n' +
                '    </div>\n' +
                '    <div style="width: 80%;float: right;height: 250px;margin-top: -180px;">\n' +
                '        <span style="font-size: 25px" onclick="toDetails('+result[i].ID+')"><a href="#">' + result[i].COMPANY_NAME + '</a></span><div class="tag num-opening" style="margin-top: -10px;">在营企业</div>\n' +
                '        <br/>\n' +
                '        <br/>\n' +
                '        <span class="span-font">法定代表人：</span><span class="span-font"><a href="#">' + result[i].COMPANY_LEGAL + '</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册资本：</span><span class="span-font">' + result[i].REG_CAPITAL + '万' + result[i].REG_UNIT + '</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册时间：</span><span class="span-font">' + result[i].REG_TIME + '</span>\n' +
                '        <br/>\n' +
                '        <br/>\n' +
                '        <span class="span-font">联系电话：</span><span class="span-font">' + result[i].REG_PHONE + '</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">邮箱：</span><span class="span-font">' + result[i].REG_EMAIL + '</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>\n' +
                '        <br/>\n' +
                '        <br/>\n' +
                '        <span class="span-font">网站名称：</span><span class="span-font">' + result[i].REG_NET_NAME + '</span>\n' +
                '    </div>\n' +
                '</div>';
        }
        $('#company_list').append(div);
        $('#company_total').text(result.length);

    });
}

/*
 *@desc 跳转详情页面
 */
function toDetails(id){
    window.location.href = _ctx + '/search/toDetails.html?id=' + id;
}