<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<link rel="stylesheet" href="${ctx}/static/_osdp/css/tyc.css">
<style>
    .fontLeft {
        font-size: 16px !important;
        margin-left: 17px!important;
    }
    /*bootstrap panel颜色修改*/
    .panel {
        background-color: #eee;
    }

    .span-font{
        font-size: 17px;
    }

    .panel-body {
        padding: 15px;
        border: 0.5px solid #e6e6e6;
    }

</style>
<%--${search}--%>
<form id="form" action="">
   <%-- <div class="easyui-pannel" style="width: 100%">
        </div>--%>
    <div class="easyui-pannel" style="width: 100%">
        <table>
            <tr>
                <td> <p class="navbar-text" style="font-size: 18px;">搜索范围:</p></td>
                <td>
                    <button id="all" type="button" class="layui-btn" style="margin-top: 8px;font-size: 16px;background-color: transparent;border: 0px;color: #0C0C0C">全部</button>
                </td>
                <td> <button id="company" type="button" class="layui-btn" style="margin-top: 8px;font-size: 16px;background-color: transparent;border: 0px;color: #0C0C0C">公司</button></td>
                <td> <button id="person" type="button" class="layui-btn" style="margin-top: 8px;font-size: 16px;background-color: transparent;border: 0px;color: #0C0C0C">个人/股东/高管</button></td>
            </tr>
            <tr>
                <td>  <p class="navbar-text" style="font-size: 18px;">省份地区:</p></td>
                <td>
                    <div class="btn-group" id="province">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="province_s">省份</span><span class="caret"></span></a>
                        <input type="hidden" name="province_i" value="">
                        <ul class="dropdown-menu" id="province_ul">
                            <%--<li><a href="#">山东</a></li>
                            <li><a href="#">山西</a></li>--%>
                        </ul>
                    </div>
                </td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="city_s">市</span><span class="caret"></span></a>
                        <input type="hidden" name="city_i">
                        <ul class="dropdown-menu" id="city_ul">
                        </ul>
                    </div>
                </td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="area_s">区</span><span class="caret"></span></a>
                        <input type="hidden" name="area_i">
                        <ul class="dropdown-menu" id="area_ul">
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td>  <p class="navbar-text" style="font-size: 18px;">企业描述:</p></td>
                <td>
                    <div class="btn-group" id="industry_type">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="industry_type_s" style="max-width: 10px;white-space: nowrap;text-overflow:ellipsis;overflow: hidden" title="">行业分类</span><span class="caret"></span></a>
                        <input type="hidden" name="industry_i">
                        <ul class="dropdown-menu" id="industry_type_ul">
                        </ul>
                    </div>
                </td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">注册资本<span class="caret"></span></a>
                        <input type="hidden" name="capti_i">
                        <ul class="dropdown-menu">
                            <li><a href="#">0万-100万</a></li>
                            <li><a href="#">100万-200万</a></li>
                            <li><a href="#">200万-500万</a></li>
                            <li><a href="#">500万-1000万</a></li>
                            <li><a href="#">1000万以上</a></li>
                            <li>
                                <a href="#">自定义</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">0万-100万</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div class="btn-group" id="company_state">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="company_state_s">企业状态</span><span class="caret"></span></a>
                        <input type="hidden" name="company_state_i">
                        <ul class="dropdown-menu" id="company_state_ul">
                        </ul>
                    </div>
                </td>
                <td>
                    <div class="btn-group" id="company_type">
                        <a href="#" class="fontLeft" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="company_type_s">企业类型</span><span class="caret"></span></a>
                        <input type="hidden" name="company_type_i">
                        <ul class="dropdown-menu" id="company_type_ul">
                        </ul>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</form>
<div class="panel panel-defaule">
    <%--<div class="panel-body">--%>
        <h2>查到<span style="color:#dc143c" id="company_total">0</span>家公司</h2>
    <%--</div>--%>
</div>
<div id="company_list">
<%--<div class="panel-body">
    <div style="width: 150px;margin-bottom: 10px;margin-top: 40px;">
        <img src="/static/_osdp/image_logo/574332.png" style="margin-left: 50%"/>
    </div>
    <div style="width: 80%;float: right;height: 250px;margin-top: -200px;">
        <span style="font-size: 25px">山东省城市商业银行联盟</span><div class="tag num-opening" style="margin-top: -10px;">在营企业</div>
        <br/>
        <br/>
        <span class="span-font">法定代表人：</span><span class="span-font"><a href="#">史跃峰</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册资本：</span><span class="span-font">50220万人民币</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册时间：</span><span class="span-font">2008-08-13</span>
        <br/>
        <br/>
        <span class="span-font">联系电话：</span><span class="span-font">1596600**</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">邮箱：</span><span class="span-font">***@163.com</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>
        <br/>
        <br/>
        <span class="span-font">网站名称：</span><span class="span-font">山东省城市商业银行联盟</span>
    </div>
</div>

<div class="panel-body">
    <div style="width: 150px;margin-bottom: 10px;margin-top: 40px;">
        <img src="/static/_osdp/image_logo/574332.png" style="margin-left: 50%"/>
    </div>
    <div style="width: 80%;float: right;height: 250px;margin-top: -200px;">
        <span style="font-size: 25px">山东省城市商业银行联盟</span><div class="tag num-opening" style="margin-top: -10px;">在营企业</div>
        <br/>
        <br/>
        <span class="span-font">法定代表人：</span><span class="span-font"><a href="#">史跃峰</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册资本：</span><span class="span-font">50220万人民币</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册时间：</span><span class="span-font">2008-08-13</span>
        <br/>
        <br/>
        <span class="span-font">联系电话：</span><span class="span-font">1596600**</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">邮箱：</span><span class="span-font">***@163.com</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>
        <br/>
        <br/>
        <span class="span-font">网站名称：</span><span class="span-font">山东省城市商业银行联盟</span>
    </div>
</div>


<div class="panel-body">
    <div style="width: 150px;margin-bottom: 10px;margin-top: 40px;">
        <img src="/static/_osdp/image_logo/574332.png" style="margin-left: 50%"/>
    </div>
    <div style="width: 80%;float: right;height: 250px;margin-top: -200px;">
        <span style="font-size: 25px">山东省城市商业银行联盟</span><div class="tag num-opening" style="margin-top: -10px;">在营企业</div>
        <br/>
        <br/>
        <span class="span-font">法定代表人：</span><span class="span-font"><a href="#">史跃峰</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册资本：</span><span class="span-font">50220万人民币</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">注册时间：</span><span class="span-font">2008-08-13</span>
        <br/>
        <br/>
        <span class="span-font">联系电话：</span><span class="span-font">1596600**</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span-font">邮箱：</span><span class="span-font">***@163.com</span><span class="span-font">&nbsp;<a href="#">查看更多</a></span>
        <br/>
        <br/>
        <span class="span-font">网站名称：</span><span class="span-font">山东省城市商业银行联盟</span>
    </div>
</div>--%>

</div>