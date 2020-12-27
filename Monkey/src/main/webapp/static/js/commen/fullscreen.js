//全屏功能
function fullScreen(btnId, element_id) {
    document.getElementById(btnId).onclick = function () {
        var elem = document.getElementById(element_id);
        elem.style.width = "100%";
        elem.style.height = "100%";
        elem.style.overflowY = "scroll";
        requestFullScreen(elem); // 某个页面元素
        //requestFullScreen(document.documentElement); // 整个网页
    };
}

function requestFullScreen(element) {
    // 判断各种浏览器，找到正确的方法
    var requestMethod = element.requestFullScreen || //W3C
        element.webkitRequestFullScreen || //FireFox
        element.mozRequestFullScreen || //Chrome等
        element.msRequestFullScreen; //IE11
    if (requestMethod) {
        requestMethod.call(element);
    } else if (typeof window.ActiveXObject !== "undefined") { //for Internet Explorer
        var wscript = new ActiveXObject("WScript.Shell");
        if (wscript !== null) {
            wscript.SendKeys("{F11}");
        }
    }
}

//退出全屏 判断浏览器种类
function exitFull() {
    // 判断各种浏览器，找到正确的方法
    var exitMethod = document.exitFullscreen || //W3C
        document.mozCancelFullScreen || //FireFox
        document.webkitExitFullscreen || //Chrome等
        document.webkitExitFullscreen; //IE11
    if (exitMethod) {
        exitMethod.call(document);
    } else if (typeof window.ActiveXObject !== "undefined") { //for Internet Explorer
        var wscript = new ActiveXObject("WScript.Shell");
        if (wscript !== null) {
            wscript.SendKeys("{F11}");
        }
    }

}

//监听退出全屏事件
window.onresize = function () {
    if (!checkFull()) {
        //要执行的动作
        $("#dashboard_id").removeClass('expand').addClass('contract'); //这里捡个懒，直接用JQ来改className
    }
}

function checkFull() {
    var isFull = document.fullscreenEnabled || window.fullScreen || document.webkitIsFullScreen || document.msFullscreenEnabled;
    //to fix : false || undefined == undefined
    if (isFull === undefined) {
        isFull = false;
    }
    return isFull;
}
