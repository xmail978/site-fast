var type = 'company';//默认查公司
/**
 * @查询跳转到一级页面
 */
$('#searchBtn').on('click', function () {
    var search = $('#search').val();
    if(search){
        window.location.href = _ctx + '/search/firstSearchPage.html?search=' + search + '&type=' + type;
    }else{
        layer.tips('请输入查询内容!', '#search', {
            time: 1500,
            tips:[3,'#4b5fff']
        });
        return;
    }
});

/*
 * @desc 切换按钮颜色
 */
$('#company').on('click', function () {
    document.getElementById('company').style.color = '#7aff98';
    document.getElementById('person').style.color = '#fff';
    type = 'company';
});

$('#person').on('click', function () {
    document.getElementById('person').style.color = '#7aff98';
    document.getElementById('company').style.color = '#fff';
    type = 'person';
});