<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<%--<link rel="stylesheet" href="/static/_osdp/css/tyc2.css">--%>
<link rel="stylesheet" href="${ctx}/static/_osdp/css/company-b659638558.css">
<style>
    #detail-info td:nth-child(odd) {
        background-color: #eaf4ff
    }

    #detail-info td:last-child {
        background-color: #fff
    }



    /*表格*/
    table {
        border-spacing: 0;
        border-collapse: collapse;
    }

    thead {
        background-color: rgba(0, 132, 255, 0.03);
    }

    tbody {
        display: table-row-group;
        vertical-align: middle;
        border-color: inherit;
    }

    .table {
        width: 100%;
        max-width: 100%;
        font-size: 14px;
        text-align: center;
        color: #202020;
    }
    .left-col {
        text-align: left;
    }
    td {
        padding: 8px;
        border: 1px solid #eaf4ff;
        font-weight: normal;
        vertical-align: middle;
    }

    .lazy-img.-image .img {
        display: none;
    }
</style>
<%--<br/>
<span style="font-size: 18px;font-weight: bold;margin-left: 20px;">工商信息</span>
<br/>
<br/>
<table style="width:80%;text-align: center;">
    <thead>
    <tr>
        <td style="width: 60%"><span class="link-vip">法定代表人</span></td>
        <td style="width: 40%"><span class="link-vip">注册信息</span></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td rowspan="3">
            <div>
                <table frame="void">
                    <tr>
                        <td style="width: 10%;border: 0;!important;">
                            <div class="logo-text -l1 -w64"><span class="text">史</span></div>
                        </td>
                        <td style="width: 90%;text-align: left;border: 0;!important;">
                            <div class="humancompany">
                                <div class="name">
                                    <a style="font-size: 18px;" class="link-click2" target="_blank" title="史跃峰"
                                       href="https://www.tianyancha.com/human/1832716535-c1235676115"
                                       onclick="common.stopPropagation(event)">史跃峰</a>
                                </div>
                                <div class="company">他有<span class="num-company-distributed">&nbsp;1&nbsp;</span>家公司，分布如下
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: 0;!important;"><span style="">甘肃（共<span style="color: red">1</span>家）</span>
                        </td>
                        <td style="text-align: left;border: 0;!important;"><span class="detail"
                                                                                 title="山东省城市商业银行合作联盟有限公司">山东省城市商业银行合作联盟有限公司</span><span>等</span>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
        <td>注册资本
            <div>50220万人民币</div>
        </td>
    </tr>
    <tr>
        <td>注册时间
            <div>2008-08-13</div>
        </td>
    </tr>
    <tr>
        <td>公司状态
            <div title="在业" class="num-opening">在业</div>
        </td>
    </tr>
    </tbody>
</table>


<table id="detail-info" style="width:80%;text-align: left;">
    <tr>
        <td style="width: 15%">工商注册号</td>
        <td style="width: 30%">370000000000558</td>
        <td style="width: 15%">组织机构代码</td>
        <td style="width: 20%">679211970</td>
        <td rowspan="2" style="width: 20%"></td>
    </tr>
    <tr>
        <td>统一社会信用代码</td>
        <td>91370000679211970D</td>
        <td>公司类型</td>
        <td>有限责任公司</td>
    </tr>
    <tr>
        <td>纳税人识别号</td>
        <td>91370000679211970D</td>
        <td>行业</td>
        <td colspan="2">货币金融服务</td>
    </tr>
    <tr>
        <td>营业期限</td>
        <td>2008-08-13至无固定期限</td>
        <td>核准日期</td>
        <td colspan="2">2018-06-25</td>
    </tr>
    <tr>
        <td>纳税人资质</td>
        <td>增值税一般纳税人</td>
        <td>人员规模</td>
        <td colspan="2">100-499人</td>
    </tr>
    <tr>
        <td>实缴资本</td>
        <td>46500万人民币</td>
        <td>登记机关</td>
        <td colspan="2">山东省工商行政管理局</td>
    </tr>
    <tr>
        <td>参保人数</td>
        <td>498</td>
        <td>英文名称</td>
        <td colspan="2">Shandong City Commercial Bank Cooperation Alliance Co.,Ltd.</td>
    </tr>
    <tr>
        <td>注册地址</td>
        <td colspan="4">山东省济南市高新东区科创路1001号</td>
    </tr>
    <tr>
        <td>经营范围</td>
        <td colspan="4">中国银行监督管理委员会依照有关法律，行政法规和其他规定批准业务，经营范围以批准文件所列为准。（有效期以许可证为准）。*(依法须经批准的项目，经相关部门批准后方可展开经营活动)。</td>
    </tr>
</table>
<br/>--%>
<div class="group-title" id="nav-main-backgroundItem"><span class="text">公司背景</span></div>
<!-- 基本信息 -->
<div class="block-data">
    <div class="data-header" id="nav-main-baseInfo">工商信息<a class="ripple ml10 link-click"
                                                           href="https://www.tianyancha.com/snapshot/1235676115"
                                                           style="font-weight: normal;" target="_blank"
                                                           tyc-event-click=""
                                                           tyc-event-ch="CompangyDetail.gongshangkuaizhao">工商官网快照</a>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div class="data-content" id="_container_baseInfo"><!--entityType  ==1   公司 ，2香港，3社会组织，4律所 5事业单位 6基金会 8台湾-->
        <table class="table">
            <thead>
            <tr>
                <td class="num-legal" width="60%">法定代表人</td>
                <td width="40%">注册信息</td>
                <%--<td class="num-equity" width="40%">股权结构图</td>--%>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="left-col shadow" rowspan="3" tyc-event-click="" tyc-event-ch="CompangyDetail.faren">
                    <div class="legal-representative"
                         onclick="common.openUrl('https://www.tianyancha.com/human/1832716535-c1235676115')">
                        <div>
                            <div class="lazy-img  -alias">
                                <div class="logo-text -l1 -w64"><span class="text">史</span></div>
                                <div class="logo -w64"><img class="img" data-src="" alt="史跃峰" erro-src=""></div>
                            </div>
                            <div class="humancompany">
                                <div class="name"><a class="link-click" target="_blank" title="史跃峰"
                                                     href="https://www.tianyancha.com/human/1832716535-c1235676115"
                                                     onclick="common.stopPropagation(event)">史跃峰</a></div>
                                <div class="company">他有<span class="num-company-distributed">&nbsp;1&nbsp;</span>家公司，分布如下
                                </div>
                            </div>
                        </div>
                        <div class="merge">
                            <div class="bottom">
                                <div class="title">甘肃<span>（共</span><span class="num-company-distributed">1</span>家）
                                </div>
                                <div class="maincompany"><span class="detail" title="山东省城市商业银行合作联盟有限公司">山东省城市商业银行合作联盟有限公司</span><span>等</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <div>注册资本
                        <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                            <div class="warp">
                                <div class="triangle"></div>
                                <div class="inner">注册资本：注册资本，又称额面资本，是指公司成立时注册登记的资本总额。注册资本一语，在各国公司法中并不...<a
                                        class="link-click" target="_blank"
                                        href="https://www.tianyancha.com/describe/zczb">详情</a></div>
                                <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                            </div>
                        </div>
                    </div>
                    <div title="50220万人民币">
                        <text class="tyc-num lh24">28448万医民币</text>
                    </div>
                </td>
                <%--<td class="shadow" rowspan="3" style="vertical-align: top; position: relative" tyc-event-click=""
                    tyc-event-ch="CompanyDeatil.guquan.guquanjiegou" onclick="haveEquityPermissionById()">
                    <div class="equity-chart"><img
                            onerror="this.src='https://static.tianyancha.com/wap/images/equitydef.png'"
                            src="https://static.tianyancha.com/equity/3c960baef9d0a9e76e2e7b68ef00ae1b.png"
                            alt="股权结构图谱—山东省城市商业银行合作联盟有限公司—天眼查"></div>
                    <div class="login-look">
                        <div class="btn btn-vip">查看详情</div>
                    </div>
                </td>--%>
            </tr>
            <tr>
                <td>
                    <div>注册时间
                        <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                            <div class="warp">
                                <div class="triangle"></div>
                                <div class="inner">注册时间：一般指公司注册日期，即公司是向工商局申请营业执照登记的时间。依法设立的营利法人，由登记机关...<a
                                        class="link-click" target="_blank"
                                        href="https://www.tianyancha.com/describe/estiblishTime">详情</a></div>
                                <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                            </div>
                        </div>
                    </div>
                    <div title=" ">
                        <text class="tyc-num lh24">4889-89-53</text>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>公司状态</div>
                    <div title="在业" class="num-opening">在业</div>
                </td>
            </tr>
            </tbody>
        </table>
        <table class="table -striped-col -border-top-none">
            <tbody>
            <tr>
                <td width="15%">工商注册号
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">注册号：工商注册号指各类市场主体在向工商行政管理机关申请登记注册时，工商行政管理机关为其分配的统一标...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/regNumber">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td width="30%">370000000000558</td>
                <td width="15%">组织机构代码
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">组织机构代码：组织机构代码是指根据代码编制规则编制，赋予每一个组织机构在全国范围内唯一的、始终不变的...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/orgNumber">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td width="20%">679211970</td>
                <td width="20%" rowspan="2" class="sort-bg"><img class="sort-chart" alt="评分99"
                                                                 <%--src="https://static.tianyancha.com/wap/images/score_99.png"--%>>
                </td>
            </tr>
            <tr>
                <td>统一社会信用代码
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">统一社会信用代码：社会信用代码是指按照《国务院关于批转发展改革委等部门法人和其他组织统一社会信用代码...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/creditCode">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td>91370000679211970D</td>
                <td>公司类型</td>
                <td>有限责任公司</td>
            </tr>
            <tr>
                <td>纳税人识别号</td>
                <td>91370000679211970D</td>
                <td>行业
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">行业：行业（或产业）是指从事相同性质的经济活动的所有单位的集合。<a class="link-click" target="_blank"
                                                                                  href="https://www.tianyancha.com/describe/category">详情</a>
                            </div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td colspan="2">货币金融服务</td>
            </tr>
            <tr>
                <td>营业期限</td>
                <td><span>2008-08-13至无固定期限</span></td>
                <td>核准日期</td>
                <td colspan="2">
                    <text class="tyc-num lh24">4859-87-42</text>
                </td>
            </tr>
            <tr>
                <td>纳税人资质</td>
                <td>增值税一般纳税人</td>
                <td>人员规模</td>
                <td colspan="2">100-499人</td>
            </tr>
            <tr>
                <td>实缴资本</td>
                <td>46500万人民币</td>
                <td>登记机关
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">登记机关：工商行政管理机关是公司登记机关。公司经公司登记机关依法登记，领取《企业法人营业执照》，方取...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/regInstitute">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td colspan="2">山东省工商行政管理局</td>
            </tr>
            <tr>
                <td>参保人数</td>
                <td>498</td>
                <td>英文名称</td>
                <td colspan="2">Shandong City Commercial Bank Cooperation Alliance Co.,Ltd.</td>
            </tr>
            <tr>
                <td>注册地址
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">注册地址：公司注册地址是在公司营业执照上登记的“住址”，一般情况下，公司以其主要办事机构所在地为住所...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/regLocation">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td colspan="4">山东省济南市高新东区科创路1001号<!--<span class="tic tic-fujin c9"></span>--><a class="link-click ml5"
                                                                                                  href="https://www.tianyancha.com/map/1235676115"
                                                                                                  tyc-event-click=""
                                                                                                  tyc-event-ch="CompangyDetail.Gongshang.NearCompany"
                                                                                                  target="_blank">附近公司</a>
                </td>
            </tr>
            <tr>
                <td>经营范围
                    <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                        <div class="warp">
                            <div class="triangle"></div>
                            <div class="inner">经营范围：经营范围是企业从事经营活动的业务范围，应当依法经企业登记机关登记。<br>申请人应当参照《...<a
                                    class="link-click" target="_blank"
                                    href="https://www.tianyancha.com/describe/businessScope">详情</a></div>
                            <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                        </div>
                    </div>
                </td>
                <td colspan="4"><span class=""><span class="js-shrink-container"><span class="js-full-container hidden">中国银行业监督管理委员会依照有关法律、行政法规和其他规定批准业务，经营范围以批准文件所列的为准。(有效期限以许可证为准)。*(依法须经批准的项目，经相关部门批准后方可开展经营活动)。</span><span
                        class="js-split-container" data-num="170" data-length="91">中国银行业监督管理委员会依照有关法律、行政法规和其他规定批准业务，经营范围以批准文件所列的为准。(有效期限以许可证为准)。*(依法须经批准的项目，经相关部门批准后方可开展经营活动)。</span><a
                        style="cursor: pointer;" class="js-shrink-btn hidden  link-click">详情</a></span></span></td>
            </tr>
            </tbody>
        </table>
    </div>
    <%--</div>--%>
    <!-- end 基本信息 -->

<!--风险提示-->
<div class="block-data">
    <div class="data-header" id="nav-main-riskInfo"><span class="link-vip-noline">风险提示</span><a
            class="tips-watch link-click hidden " watch-hide="" onclick="toogleWatch()" watch-type="" extra-id=""
            gid="">监控后及时获取风险变动，立即监控</a>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div class="data-content" tyc-event-click="" tyc-event-ch="CompangyDetail.risk">
        <script type="text/html">[{"count":6,"name":"自身风险","otherCount":5,"list":[{"id":16759807,"title":"该公司 曾因\u003Cem\u003E************\u003C\u002Fem\u003E而起诉他人或公司","type":8,"riskCount":1}],"type":1},{"count":10238,"name":"周边风险","otherCount":10237,"list":[{"id":91602328,"title":"该公司 的股东\u003Cem\u003E*******\u003C\u002Fem\u003E曾因未按时履行法律义务而被法院\u003Cem\u003E************\u003C\u002Fem\u003E","type":5,"companyName":"*******","riskCount":1}],"type":2},{"count":199,"name":"预警提醒","otherCount":191,"list":[{"id":56053753,"title":"该公司 发生了\u003Cem\u003E************\u003C\u002Fem\u003E变更","type":17,"riskCount":8}]}]</script>
        <div class="eye-risk " onclick="riskdetect(false,this)">
            <div class="self-risk ">
                <div class="title"><span class="risk">自身风险</span><span class="tag tag-risk-count">6条</span></div>
                <div class="content riskContent">
                    <div class="risk-width-hidden">该公司 曾因<em><span class="reason"></span><img class="click_mask_img"
                                                                                              src="${ctx}/static/_osdp/ytc-image/zhedang1020.png"></em>而起诉他人或公司<span>（1）</span>
                    </div>
                    <span class="link-vip">详情</span>
                    <div>其他（5）<span class="link-vip">详情</span></div>
                </div>
            </div>
            <div class="self-risk pt20">
                <div class="title"><span class="risk">周边风险</span><span class="tag tag-risk-count">10238条</span></div>
                <div class="content riskContent">
                    <div class="risk-width-hidden">该公司 的股东<em><span class="message"></span><img class="click_mask_img"
                                                                                                src="/static/_osdp/ytc-image/zhedang45.jpg"></em>曾因未按时履行法律义务而被法院<em><span
                            class="reason"></span><img class="click_mask_img"
                                                       src="${ctx}/static/_osdp/ytc-image/zhedang1020.png"></em><span>（1）</span>
                    </div>
                    <span class="link-vip">详情</span>
                    <div>其他（10237）<span class="link-vip">详情</span></div>
                </div>
            </div>
            <div class="self-risk pt20">
                <div class="title"><span class="risk">预警提醒</span><span class="tag tag-risk-count">199条</span></div>
                <div class="content riskContent">
                    <div class="risk-width-hidden">该公司 发生了<em><span class="reason"></span><img class="click_mask_img"
                                                                                               src="${ctx}/static/_osdp/ytc-image/zhedang1020.png"></em>变更<span>（8）</span>
                    </div>
                    <span class="link-vip">详情</span>
                    <div>其他（191）<span class="link-vip">详情</span></div>
                </div>
            </div>
            <div class="risk-detail btn -sm btn-vip" tyc-event-click="" tyc-event-ch="compangy.detail.fxbd">查看详情</div>
        </div>
    </div>
</div>
<!--风险提示end-->

<!--股权穿透图-->
<div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.guquanchuantou">
    <div class="data-header" id="nav-main-graphTreeInfo">股权穿透图
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div id="_graphTreeInfo_container" class="data-content">
        <div class="tree-graph-tool">
            <div class="company-name">山东省城市商业银行合作联盟有限公司</div>
            <div class="btn-group">
                <div onclick="showAllTreeGraph(this);" class="btn-area -right-border"><i
                        class="tic tic-zhankai"></i><span>全屏查看</span></div>
                <div onclick="showTreeShortName(this);" class="btn-area -right-border"><i
                        class="tic tic-xianshijiancheng1"></i><span>显示简称</span></div>
                <div id="_btn_download_tree" onclick="downLoadTreePng(this,event);" class="btn-area -right-border"><i
                        class="tic tic-xiazaitupian"></i><span>下载图片</span></div>
                <div id="_btn_download_tree_svg" onclick="downloadCompanyTreeSVG(event,this);" class="btn-area"><i
                        class="tic tic-chakangaoqingtu"></i><span>查看高清图</span></div>
            </div>
        </div>
        <!--<div class="btn -sm btn-primary-bd show-all-graph"         tyc-event-click tyc-event-ch="CompangyDetail.qiyeguanxi" onclick="showAllTreeGraph(true);">-->
        <!--全屏查看--><!--</div>-->
        <iframe data-company-id="1235676115" style="width:100%;height:500px;border:none;" data-key="32d1"
                data-time="15476891426579990" data-mobile="13864037701"
        <%--src="${ctx}/detail/tree?graphId=1235676115&amp;origin=https%3A%2F%2Fwww.tianyancha.com&amp;mobile=13864037701&amp;time=15476891426579990"></iframe>--%>
                src="${ctx}/detail/tree"></iframe>
    </div>
</div>
<!--股权穿透图end-->
<!--[高管信息]-->
<div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.zhuyaorenyuan">
    <div class="data-header" id="nav-main-staffCount">主要人员<span class="data-count">24</span>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div class="data-content" id="_container_staff">
        <div class="clearfix">
            <table class="table">
                <thead>
                <tr>
                    <th class="sort-col">序号</th>
                    <th>主要人员</th>
                    <th width="25%">职位</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">王</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="王强" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2353017796-c1235676115" target="_blank">王强</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2353017796-c1235676115">他有45家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">黄</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="黄鑫" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2302456816-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">徐</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="徐玉红" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1942717215-c1235676115" target="_blank">徐玉红</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1942717215-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">张</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="张爱民" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1929503930-c1235676115" target="_blank">张爱民</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1929503930-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">杜</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="杜强" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1994457769-c1235676115" target="_blank">杜强</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1994457769-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">张</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="张文明" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1926643033-c1235676115" target="_blank">张文明</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1926643033-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">葛</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="葛磊" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2145195675-c1235676115" target="_blank">葛磊</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2145195675-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">舒</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="舒萍" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2131154529-c1235676115" target="_blank">舒萍</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2131154529-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">孟</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="孟琳" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1884526533-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">袁</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="袁玲玲" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2163272135-c1235676115" target="_blank">袁玲玲</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2163272135-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">葛</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="葛萍" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2145374310-c1235676115" target="_blank">葛萍</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2145374310-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">张</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="张荣亮" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1931967956-c1235676115" target="_blank">张荣亮</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1931967956-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">窦</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="窦建伟" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2102000067-c1235676115" target="_blank">窦建伟</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2102000067-c1235676115">他有5家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">苏</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="苏宏卫" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2134634678-c1235676115" target="_blank">苏宏卫</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2134634678-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">黄</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="黄家才" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2297178918-c1235676115" target="_blank">黄家才</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2297178918-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事兼总经理</span></td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">寇</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="寇钢" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1895064647-c1235676115" target="_blank">寇钢</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1895064647-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">陈</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="陈大章" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2250489688-c1235676115" target="_blank">陈大章</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2250489688-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">冯</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="冯现刚" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1802416486-c1235676115" target="_blank">冯现刚</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1802416486-c1235676115">他有2家公司 &gt;</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>19</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">史</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="史跃峰" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/1832716535-c1235676115" target="_blank">史跃峰</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/1832716535-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事长</span></td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">胡</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="胡高雷" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2129301779-c1235676115" target="_blank">胡高雷</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2129301779-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>21</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">朱</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="朱毅达" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click"
                               href="https://www.tianyancha.com/human/2349535618-c1235676115" target="_blank">朱毅达</a><a
                                href-new-event="" event-name="人员详情" rel="" event-name2="人员详情-点击量-主要人员"
                                is-need-state="true" class="link-vip right" target="_blank"
                                href="https://www.tianyancha.com/human/2349535618-c1235676115">他有1家公司 &gt;</a></div>
                    </td>
                    <td><span>董事</span></td>
                </tr>
                <tr>
                    <td>22</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">徐</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="徐圣颖" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click">徐圣颖</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>23</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">魏</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="魏涪雷" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click">魏涪雷</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                <tr>
                    <td>24</td>
                    <td>
                        <div class="text-image-human">
                            <div class="lazy-img -alias">
                                <div class="logo-text -l1 -w36"><span class="text">杨</span></div>
                                <div class="logo -w36"><img class="img" data-src="" alt="杨方步" erro-src=""></div>
                            </div>
                            <a href-new-event="" event-name="企业详情-主要人员" class="link-click">杨方步</a></div>
                    </td>
                    <td><span>监事</span></td>
                </tr>
                </tbody>
            </table><!----><!----><!----></div>
    </div>
</div>
<!-- end [高管信息]-->
<!--[股东信息]-->
<div class="block-data">
    <div class="data-header" id="nav-main-holderCount">股东信息<span class="data-count">15</span>
        <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
            <div class="warp">
                <div class="triangle"></div>
                <div class="inner">股东：股东是组成公司并在其中享有权利的人。凡是基于对公司的投资或基于其他的合法原因而持有公司资本的一...<a class="link-click"
                                                                                           target="_blank"
                                                                                           href="https://www.tianyancha.com/describe/holder">详情</a>
                </div>
                <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
            </div>
        </div>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div class="data-content" id="_container_holder">
        <table class="table">
            <thead>
            <tr>
                <th class="sort-col">序号</th>
                <th>股东（发起人）<span href-new-event="" event-name="股东-股权结构图" is-need-state="true"
                                 onclick="haveEquityPermissionById('https://static.tianyancha.com/equity/3c960baef9d0a9e76e2e7b68ef00ae1b.png')"
                                 class=""><span class="link-vip">查看实际控股人 &gt;</span></span></th>
                <th class="proportion-col">出资比例</th>
                <th width="20%">认缴出资</th>
                <th class="date-col">出资时间</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">莱商银行</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="莱商银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/222451764" title="莱商银行股份有限公司">莱商银行股份有限公司</a><span
                                class="num-dagudong">大股东</span></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/222451764">他参股5家公司 &gt;</a></div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">8.60%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>320万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>2000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2011-12-31</span></div>
                    <div><span>2009-12-11</span></div>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">临商银行</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="临商银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676766"
                                                 title="临商银行股份有限公司">临商银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676766">他参股5家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">8.60%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>320万人民币</span></div>
                    <div><span>2000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2012-07-19</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2009-12-23</span></div>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">齐鲁银行</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="齐鲁银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/582912043" title="齐鲁银行股份有限公司">齐鲁银行股份有限公司</a>
                        </div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/582912043">他参股19家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">8.60%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>320万人民币</span></div>
                    <div><span>2000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2015-10-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2010-01-05</span></div>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="长安银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235677098"
                                                 title="长安银行股份有限公司">长安银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235677098">他参股6家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">8.60%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>320万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>3000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2010-04-20</span></div>
                    <div><span>2012-04-28</span></div>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="德州银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676844"
                                                 title="德州银行股份有限公司">德州银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676844">他参股2家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2009-12-15</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2011-12-31</span></div>
                </td>
            </tr>
            <tr>
                <td>6</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="济宁银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676959"
                                                 title="济宁银行股份有限公司">济宁银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676959">他参股2家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2010-01-06</span></div>
                    <div><span>2012-05-02</span></div>
                </td>
            </tr>
            <tr>
                <td>7</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="日照银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/712804006" title="日照银行股份有限公司">日照银行股份有限公司</a>
                        </div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/712804006">他参股5家公司 &gt;</a></div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2009-10-09</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2012-01-16</span></div>
                </td>
            </tr>
            <tr>
                <td>8</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="烟台银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676763"
                                                 title="烟台银行股份有限公司">烟台银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676763">他参股1家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2012-03-28</span></div>
                    <div><span>2009-12-21</span></div>
                </td>
            </tr>
            <tr>
                <td>9</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="东营银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676923"
                                                 title="东营银行股份有限公司">东营银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676923">他参股1家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2012-05-07</span></div>
                    <div><span>2009-12-16</span></div>
                    <div><span>2008-07-16</span></div>
                </td>
            </tr>
            <tr>
                <td>10</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="泰安银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/2321798908"
                                                 title="泰安银行股份有限公司">泰安银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/2321798908">他参股2家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2012-07-13</span></div>
                    <div><span>2010-01-06</span></div>
                </td>
            </tr>
            <tr>
                <td>11</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="潍坊银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235676717"
                                                 title="潍坊银行股份有限公司">潍坊银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676717">他参股2家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2012-04-19</span></div>
                    <div><span>2009-12-10</span></div>
                    <div><span>2008-07-16</span></div>
                </td>
            </tr>
            <tr>
                <td>12</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">商业银行</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="威海市商业银行股份有限公司" erro-src=""
                                                        src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1024156086"
                                                 title="威海市商业银行股份有限公司">威海市商业银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1024156086">他参股4家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2012-04-11</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2009-12-10</span></div>
                </td>
            </tr>
            <tr>
                <td>13</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -alias">
                            <div class="logo-text -l4 -w36"><span class="text">齐商银行</span></div>
                            <div class="logo -w36"><img class="img"
                                                        data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                                        alt="齐商银行股份有限公司" erro-src=""></div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/524024493" title="齐商银行股份有限公司">齐商银行股份有限公司</a>
                        </div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/524024493">他参股3家公司 &gt;</a></div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">6.45%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>240万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2014-08-27</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2009-12-10</span></div>
                </td>
            </tr>
            <tr>
                <td>14</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36">
                                <img class="img" data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                     alt="枣庄银行股份有限公司" erro-src=""
                                     src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong"><a class="link-click" tyc-event-click=""
                                                 tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                                                 href="https://www.tianyancha.com/company/1235677018"
                                                 title="枣庄银行股份有限公司">枣庄银行股份有限公司</a></div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235677018">他参股1家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">5.38%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>200万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                    <div><span>500万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                    <div><span>2010-01-07</span></div>
                    <div><span>2011-12-26</span></div>
                </td>
            </tr>
            <tr>
                <td>15</td>
                <td>
                    <div class="text-image-human">
                        <div class="lazy-img -image">
                            <div class="logo-text -l4 -w36"><span class="text">银行股份</span></div>
                            <div class="logo -w36">
                                <img class="img" data-src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200"
                                     alt="青岛银行股份有限公司" erro-src=""
                                     src="${ctx}/static/_osdp/image_logo/574332.png@!f_200x200">
                            </div>
                        </div>
                        <div class="dagudong">
                            <a class="link-click" tyc-event-click=""
                               tyc-event-ch="CompangyDetail.gudong.gongsi" target="_blank"
                               href="https://www.tianyancha.com/company/1235676691"
                               title="青岛银行股份有限公司">青岛银行股份有限公司</a>
                        </div>
                        <div class="right"><a is-need-state="true" class="link-vip" target="_blank" rel=""
                                              href="https://www.tianyancha.com/company/1235676691">他参股2家公司 &gt;</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div>
                        <div><span class="num-investment-rate">2.15%</span></div>
                    </div>
                </td>
                <td>
                    <div><span>80万人民币</span></div>
                    <div><span>1000万人民币</span></div>
                </td>
                <td>
                    <div><span>2018-04-30</span></div>
                    <div><span>2008-07-16</span></div>
                </td>
            </tr>
            </tbody>
        </table><!----><!----><!---->
    </div>
</div>
<!-- end [股东信息]-->
<!--[对外投资]-->
<!-- end [对外投资]-->

    <!--[最终受益人/实际控制权]-->
    <!-- [最终受益人]-->
    <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.zuizhongshouyiren">
        <div class="data-header" id="nav-main-shouyirenCount">最终受益人<span class="data-count">1</span>
            <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                <div class="warp">
                    <div class="triangle"></div>
                    <div class="inner">最终受益人展示疑似直接或间接拥有5%及以上股权的自然人或公司。仅供用户参考，该成果并不代表天眼查的任...<a class="link-click"
                                                                                               target="_blank"
                                                                                               href="https://www.tianyancha.com/describe/humanholding">详情</a>
                    </div>
                    <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                </div>
            </div>
            <div class="data-logo">
                <svg viewBox="0 0 90 20">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                </svg>
            </div>
        </div>
        <div class="data-content" id="_container_humanholding">
            <table class="table">
                <thead>
                <tr>
                    <th class="sort-col">序号</th>
                    <th width="30%">最终受益人名称</th>
                    <th width="9%">持股比例</th>
                    <th width="">股权链</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><span>1</span></td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.humanholding.faren"><span><a
                            is-need-state="true" class="link-click" target="_blank" title="李彦宏"
                            href="https://www.tianyancha.com/human/1984012283-c2350736124">李彦宏</a><span class="right"><a
                            is-need-state="true" class="link-vip" target="_blank" rel=""
                            href="https://www.tianyancha.com/human/1984012283-c2350736124">他有14家公司 &gt;</a></span></span>
                    </td>
                    <td><span class="num-shareholding-ratio">99.5%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约99.5%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/human/1984012283-c2350736124"
                                                        target="_blank">李彦宏</a></span>
                            <div class="arrow">99.5%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table><!----><!----><!----></div>
    </div>
    <!-- end [最终受益人]-->
    <!--[实际控制权]-->
    <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.shijikongzhiquan">
        <div class="data-header" id="nav-main-realHoldingCount">实际控制权<span class="data-count">210</span>
            <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
                <div class="warp">
                    <div class="triangle"></div>
                    <div class="inner">实际控制权展示公司或自然人直接或间接拥有疑似实际控制权的企业。仅供用户参考，该成果并不代表天眼查的任...<a class="link-click"
                                                                                               target="_blank"
                                                                                               href="https://www.tianyancha.com/describe/companyholding">详情</a>
                    </div>
                    <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
                </div>
            </div>
            <div class="data-logo">
                <svg viewBox="0 0 90 20">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                </svg>
            </div>
        </div>
        <div class="data-content" id="_container_companyholding">
            <table class="table">
                <thead>
                <tr>
                    <th class="sort-col">序号</th>
                    <th width="22%">控股企业名称</th>
                    <th width="9%">投资比例</th>
                    <th width="">股权链</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3223167740">北京百度百盈基金销售有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2310470083"
                                                        target="_blank">百度鹏寰资产管理（北京）有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3223167740"
                                                        target="_blank">北京百度百盈基金销售有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/554335681">合肥优点信息技术有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/554335681"
                                                        target="_blank">合肥优点信息技术有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/26080527">北京长地万方科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/26080527"
                                                        target="_blank">北京长地万方科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/2566834315">济南百伯人力资源有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/107706459"
                                                        target="_blank">上海百度人才咨询有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2566834315"
                                                        target="_blank">济南百伯人力资源有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/2358180982">北京受教信息科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2358180982"
                                                        target="_blank">北京受教信息科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>6</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/25104813">北京乐和彩科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/25104813"
                                                        target="_blank">北京乐和彩科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>7</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/107706383">北京蓝宙管理咨询有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/107706459"
                                                        target="_blank">上海百度人才咨询有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/107706383"
                                                        target="_blank">北京蓝宙管理咨询有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>8</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/2358524620">北京百度百盈科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2310470083"
                                                        target="_blank">百度鹏寰资产管理（北京）有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2358524620"
                                                        target="_blank">北京百度百盈科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>9</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/2310470083">百度鹏寰资产管理（北京）有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2310470083"
                                                        target="_blank">百度鹏寰资产管理（北京）有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>10</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3102575943">宁波梅山保税港区百度致新资产管理有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3046112687"
                                                        target="_blank">达孜县百瑞翔创业投资管理有限责任公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3102575943"
                                                        target="_blank">宁波梅山保税港区百度致新资产管理有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>11</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3150610718">北京百慧创赢投资管理有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3046112687"
                                                        target="_blank">达孜县百瑞翔创业投资管理有限责任公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3150610718"
                                                        target="_blank">北京百慧创赢投资管理有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>12</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3125216335">百度雄安科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3125216335"
                                                        target="_blank">百度雄安科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>13</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/139572921">北京百度网讯科技有限公司深圳分公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/139572921"
                                                        target="_blank">北京百度网讯科技有限公司深圳分公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>14</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/107706459">上海百度人才咨询有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/107706459"
                                                        target="_blank">上海百度人才咨询有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>15</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/2262980">北京鼎新天下科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/2262980"
                                                        target="_blank">北京鼎新天下科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>16</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3046112687">达孜县百瑞翔创业投资管理有限责任公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3046112687"
                                                        target="_blank">达孜县百瑞翔创业投资管理有限责任公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>17</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/28020234">星云融创（北京）科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/28020234"
                                                        target="_blank">星云融创（北京）科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>18</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3043827609">北京百度智行科技有限公司</a></span></td>
                    <td><span class="num-investment-ratio">100%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约100%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3043827609"
                                                        target="_blank">北京百度智行科技有限公司</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>19</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3169664033">北京百众聚丰投资基金合伙企业（有限合伙）</a></span></td>
                    <td><span class="num-investment-ratio">99.9%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约99.9%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3046112687"
                                                        target="_blank">达孜县百瑞翔创业投资管理有限责任公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3150610718"
                                                        target="_blank">北京百慧创赢投资管理有限公司</a></span>
                            <div class="arrow">99.9%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3169664033"
                                                        target="_blank">北京百众聚丰投资基金合伙企业（有限合伙）</a></span></div>
                    </td>
                </tr>
                <tr>
                    <td>20</td>
                    <td class="left-col" tyc-event-click="" tyc-event-ch="CompangyDetail.companyholding.faren"><span><a
                            class="link-click" is-need-state="true" target="_blank" rel=""
                            href="https://www.tianyancha.com/company/3199096081">北京百慧聚鑫投资合伙企业（有限合伙）</a></span></td>
                    <td><span class="num-investment-ratio">99.8%</span></td>
                    <td>
                        <div class="chain-equity">
                            <div class="route"><b>路径1（占比约99.8%）</b></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/22822" target="_blank">北京百度网讯科技有限公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3046112687"
                                                        target="_blank">达孜县百瑞翔创业投资管理有限责任公司</a></span>
                            <div class="arrow">100%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3150610718"
                                                        target="_blank">北京百慧创赢投资管理有限公司</a></span>
                            <div class="arrow">99.9%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3169664033"
                                                        target="_blank">北京百众聚丰投资基金合伙企业（有限合伙）</a></span>
                            <div class="arrow">99.9%<span class="triangle"></span></div>
                            <span class="link-click"><a href="https://www.tianyancha.com/company/3199096081"
                                                        target="_blank">北京百慧聚鑫投资合伙企业（有限合伙）</a></span></div>
                    </td>
                </tr>
                </tbody>
            </table><!----><!----><!---->
            <div class="company_pager">
                <ul class="pagination" page-total="210" change-type="companyholding" line-type-name="" line-type-val="">
                    <li><a class="num -current">1</a></li>
                    <li><a class="num " onclick="companyPageChange(2,this)">2</a></li>
                    <li><a class="num " onclick="companyPageChange(3,this)">3</a></li>
                    <li><a class="num " onclick="companyPageChange(4,this)">4</a></li>
                    <li><a class="num " onclick="companyPageChange(5,this)">5</a></li>
                    <li><a class="num " onclick="companyPageChange(6,this)">6</a></li>
                    <li><a class="num " onclick="companyPageChange(7,this)">7</a></li>
                    <li><a class="num " onclick="companyPageChange(8,this)">8</a></li>
                    <li><a class="num " onclick="companyPageChange(9,this)">9</a></li>
                    <li><a class="num " onclick="companyPageChange(10,this)">10</a></li>
                    <li><a class="num -end" onclick="companyPageChange(11,this)">...11</a></li>
                    <li><a class="num -next" onclick="companyPageChange(2,this)">&gt;</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- end [实际控制权]-->
    <!--end[最终受益人/实际控制权]-->


<!-- graph 企业关系 -->
<div class="block-data" id="nav-main-graphInfo">
    <div class="data-header" style="margin-bottom:10px;">企业关系
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div id="_graph_container" class="data-content">
        <div class="graph-loading-container -hidden">
            <div class="loading-scroll loading-group">
                <div class="content">
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                </div>
            </div>
        </div>
        <div class="graph-tool">
            <div class="company-name">山东省城市商业银行合作联盟有限公司</div>
            <div class="btn-group">
                <div onclick="showAllGraph(true);" class="btn-area -right-border"><i class="tic tic-zhankai"></i><span>全屏查看</span>
                </div>
                <div id="_btn_download_graph" onclick="downloadCompanyGraph(event,this);"
                     class="btn-area -right-border"><i class="tic tic-xiazaitupian"></i><span>下载图片</span></div>
                <div id="_btn_download_svg" onclick="downloadCompanyGraphSVG(event,this);" class="btn-area"><i
                        class="tic tic-chakangaoqingtu"></i><span>查看高清图</span></div>
            </div>
        </div>
        <iframe data-company-id="1235676115" style="width:100%;height:500px;border:none;" data-mobile="13864037701"
                data-key="32d1" data-time="15476891426579990"
                <%--src="https://dis.tianyancha.com/dis/old#/show?ids=1235676115&amp;_t=1547689144038&amp;origin=https%3A%2F%2Fwww.tianyancha.com&amp;mobile=13864037701&amp;time=15476891426579990&amp;key=32d1&amp;cnz=true"></iframe>--%>
                src="${ctx}/detail/graph"></iframe>
    </div>
</div>
<!-- end graph 企业关系-->

<!--变更信息oocss-->
<div class="block-data">
    <div class="data-header" id="nav-main-changeCount">变更记录<span class="data-count">30</span>
        <div class="data-describe"><i class="tic tic-circle-question-o icon"></i>
            <div class="warp">
                <div class="triangle"></div>
                <div class="inner">变更记录：公司的变更是指公司设立登记的事项包括名称、住所、法定代表人、注册资本、企业类型（组织形式）...<a class="link-click"
                                                                                           target="_blank"
                                                                                           href="https://www.tianyancha.com/describe/change">详情</a>
                </div>
                <div class="info">* 名词解释由天眼查合作伙伴<span class="link">北大法宝</span>提供</div>
            </div>
        </div>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
        <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.change.filter">
            <div class="drop-down-btn"><span class="title">变更项目</span><i class="tic tic-xiala"></i></div>
            <div class="content">
                <div class="item" onclick="companyFilterChange(event,'changeinfo','-100','changeItem','-100');">全部项目
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','联系方式备案','changeItem','联系方式备案');">
                    联系方式备案(9)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','高级管理人员备案','changeItem','高级管理人员备案');">
                    高级管理人员备案(8)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','注册资本变更','changeItem','注册资本变更');">
                    注册资本变更(3)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','章程备案','changeItem','章程备案');">
                    章程备案(2)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','股东、发起人变更','changeItem','股东、发起人变更');">
                    股东、发起人变更(2)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','住所变更','changeItem','住所变更');">
                    住所变更(1)
                </div>
                <div class="item"
                     onclick="companyFilterChange(event,'changeinfo','法定代表人、负责人变更','changeItem','法定代表人、负责人变更');">
                    法定代表人、负责人变更(1)
                </div>
                <div class="item"
                     onclick="companyFilterChange(event,'changeinfo','登记机关、管辖单位变更','changeItem','登记机关、管辖单位变更');">
                    登记机关、管辖单位变更(1)
                </div>
                <div class="item" onclick="companyFilterChange(event,'changeinfo','其他','changeItem','其他');">其他(3)</div>
            </div>
        </div>
    </div>
    <div class="data-content" id="_container_changeinfo">
        <table class="table">
            <thead>
            <tr>
                <th class="sort-col">序号</th>
                <th class="date-col">变更时间</th>
                <th width="">变更项目</th>
                <th width="36%">变更前</th>
                <th width="36%">变更后</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2018-06-25</td>
                <td>-</td>
                <td>
                    <div class="change-text select-none">姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115"
                            target="_blank">胡高雷</a></font></em>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">8</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115"
                            target="_blank">黄家才</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">董</font></em>事<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">兼总经理</font></em>,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">1</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1832716535-c1235676115"
                            target="_blank">史跃峰</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">长</font></em>,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">6</font></em>,联系电话:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">81678393</font></em>;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1955135281-c1235676115"
                            target="_blank">方明永</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">监</font></em>事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">X</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115"
                            target="_blank">张爱民</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">监</font></em>事,证件号码:*****6,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1789095861-c1235676115"
                            target="_blank">侯玉荣</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">0</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2344096941-c1235676115" target="_blank">李军</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">6</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2070204726-c1235676115"
                            target="_blank">王建春</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">8</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1942170889-c1235676115" target="_blank">徐毅</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">董</font></em>事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">8</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">8</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1984272947-c1235676115"
                            target="_blank">李志辉</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">3</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1896800400-c1235676115"
                            target="_blank">尚海燕</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****1,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2033377109-c1235676115"
                            target="_blank">毕秋波</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">董</font></em>事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">5</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2058895374-c1235676115"
                            target="_blank">焦自竺</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">3</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">监</font></em>事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">5</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/1983321935-c1235676115" target="_blank">李峰</a></font></em>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:*****<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">X</font></em>,联系电话:;姓名:<em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;"><a
                            href="https://www.tianyancha.com/human/2184187045-c1235676115" target="_blank">贺柳</a></font></em>,证件类型:中华人民共
                    </div>
                </td>
                <td>
                    <div class="change-text select-none">姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1931967956-c1235676115"
                            target="_blank">张荣亮</a></font></em>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:*****<em><font
                            color="#EF5644">X</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1942717215-c1235676115"
                            target="_blank">徐玉红</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font color="#EF5644">监</font></em>事,证件号码:*****<em><font
                            color="#EF5644">2</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1994457769-c1235676115" target="_blank">杜强</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">2</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2131154529-c1235676115" target="_blank">舒萍</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            color="#EF5644">董</font></em>事,证件号码:*****<em><font
                            color="#EF5644">5</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1832716535-c1235676115"
                            target="_blank">史跃峰</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font color="#EF5644">董</font></em>事<em><font
                            color="#EF5644">长</font></em>,证件号码:*****6,联系电话:<em><font
                            color="#EF5644">81678393</font></em>;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115"
                            target="_blank">张爱民</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">6</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">8</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2349535618-c1235676115"
                            target="_blank">朱毅达</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">1</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            color="#EF5644">监</font></em>事,证件号码:*****<em><font
                            color="#EF5644">5</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2134634678-c1235676115"
                            target="_blank">苏宏卫</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">7</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115"
                            target="_blank">胡高雷</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">8</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115"
                            target="_blank">黄家才</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事<em><font
                            color="#EF5644">兼总经理</font></em>,证件号码:*****1,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2163272135-c1235676115"
                            target="_blank">袁玲玲</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font color="#EF5644">监</font></em>事,证件号码:*****<em><font
                            color="#EF5644">2</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2145374310-c1235676115" target="_blank">葛萍</a></font></em>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:*****<em><font
                            color="#EF5644">8</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/2353017796-c1235676115" target="_blank">王强</a></font></em>,证件类型:中华人民共和国居民身份证,职务:<em><font
                            color="#EF5644">董</font></em>事,证件号码:*****<em><font
                            color="#EF5644">7</font></em>,联系电话:;姓名:<em><font color="#EF5644"><a
                            href="https://www.tianyancha.com/human/1802416486-c1235676115"
                            target="_blank">冯现刚</a></font></em>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:*****<em><font
                            color="#EF5644">7</font></em>,联系电话:;姓名:<em><font color="#EF5644">杨方步</font></em>,证件类型:中华人民共
                    </div>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>2018-06-25</td>
                <td>-</td>
                <td>
                    <div class="change-text select-none"><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">46</font></em>500
                    </div>
                </td>
                <td>
                    <div class="change-text select-none">50<em><font color="#EF5644">22</font></em>0</div>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>2018-06-25</td>
                <td>监事</td>
                <td>
                    <div class="change-text select-none">姓名:<a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115" target="_blank">胡高雷</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115" target="_blank">黄家才</a>,证件类型:中华人民共和国居民身份证,职务:董事兼总经理,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/1832716535-c1235676115" target="_blank">史跃峰</a>,证件类型:中华人民共和国居民身份证,职务:董事长,证件号码:****,联系电话:****;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1955135281-c1235676115" target="_blank">方明永</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115" target="_blank">张爱民</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1789095861-c1235676115" target="_blank">侯玉荣</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2344096941-c1235676115" target="_blank">李军</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2070204726-c1235676115" target="_blank">王建春</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1942170889-c1235676115" target="_blank">徐毅</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1984272947-c1235676115" target="_blank">李志辉</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1896800400-c1235676115" target="_blank">尚海燕</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2033377109-c1235676115" target="_blank">毕秋波</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2058895374-c1235676115" target="_blank">焦自竺</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1983321935-c1235676115" target="_blank">李峰</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2184187045-c1235676115" target="_blank">贺柳</a>,证件类型:中华人民共</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br></div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1931967956-c1235676115" target="_blank">张荣亮</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1942717215-c1235676115" target="_blank">徐玉红</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1994457769-c1235676115" target="_blank">杜强</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/2131154529-c1235676115" target="_blank">舒萍</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br>姓名:<a href="https://www.tianyancha.com/human/1832716535-c1235676115"
                                                  target="_blank">史跃峰</a>,证件类型:中华人民共和国居民身份证,职务:董事长,证件号码:****,联系电话:****;<br>姓名:<a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115" target="_blank">张爱民</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2349535618-c1235676115"
                                                  target="_blank">朱毅达</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:; [新增]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2134634678-c1235676115"
                                                  target="_blank">苏宏卫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:; [新增]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115" target="_blank">胡高雷</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115" target="_blank">黄家才</a>,证件类型:中华人民共和国居民身份证,职务:董事兼总经理,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2163272135-c1235676115"
                                                  target="_blank">袁玲玲</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:; [新增]</font></em><br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2145374310-c1235676115"
                                                  target="_blank">葛萍</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/2353017796-c1235676115" target="_blank">王强</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1802416486-c1235676115" target="_blank">冯现刚</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:杨方步,证件类型:中华人民共 [新增]</font></em><br></div>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>2018-06-25</td>
                <td>章程</td>
                <td>
                    <div class="change-text select-none">-</div>
                </td>
                <td>
                    <div class="change-text select-none">-</div>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>2018-06-25</td>
                <td>董事</td>
                <td>
                    <div class="change-text select-none">姓名:<a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115" target="_blank">胡高雷</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115" target="_blank">黄家才</a>,证件类型:中华人民共和国居民身份证,职务:董事兼总经理,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/1832716535-c1235676115" target="_blank">史跃峰</a>,证件类型:中华人民共和国居民身份证,职务:董事长,证件号码:****,联系电话:****;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1955135281-c1235676115" target="_blank">方明永</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115" target="_blank">张爱民</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1789095861-c1235676115" target="_blank">侯玉荣</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2344096941-c1235676115" target="_blank">李军</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2070204726-c1235676115" target="_blank">王建春</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1942170889-c1235676115" target="_blank">徐毅</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1984272947-c1235676115" target="_blank">李志辉</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1896800400-c1235676115" target="_blank">尚海燕</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2033377109-c1235676115" target="_blank">毕秋波</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2058895374-c1235676115" target="_blank">焦自竺</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/1983321935-c1235676115" target="_blank">李峰</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br><em><font
                            style="color:#9E9E9E;text-decoration:line-through;text-decoration-color:#ff3b30;">姓名:<a
                            href="https://www.tianyancha.com/human/2184187045-c1235676115" target="_blank">贺柳</a>,证件类型:中华人民共</font></em><em><font
                            color="#9E9E9E"> [退出]</font></em><br></div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1931967956-c1235676115" target="_blank">张荣亮</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1942717215-c1235676115" target="_blank">徐玉红</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1994457769-c1235676115" target="_blank">杜强</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/2131154529-c1235676115" target="_blank">舒萍</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br>姓名:<a href="https://www.tianyancha.com/human/1832716535-c1235676115"
                                                  target="_blank">史跃峰</a>,证件类型:中华人民共和国居民身份证,职务:董事长,证件号码:****,联系电话:****;<br>姓名:<a
                            href="https://www.tianyancha.com/human/1929503930-c1235676115" target="_blank">张爱民</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2302456816-c1235676115" target="_blank">黄鑫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2349535618-c1235676115"
                                                  target="_blank">朱毅达</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:; [新增]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/1884526533-c1235676115" target="_blank">孟琳</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2134634678-c1235676115"
                                                  target="_blank">苏宏卫</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:; [新增]</font></em><br>姓名:<a
                            href="https://www.tianyancha.com/human/2129301779-c1235676115" target="_blank">胡高雷</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;<br>姓名:<a
                            href="https://www.tianyancha.com/human/2297178918-c1235676115" target="_blank">黄家才</a>,证件类型:中华人民共和国居民身份证,职务:董事兼总经理,证件号码:****,联系电话:;<br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2163272135-c1235676115"
                                                  target="_blank">袁玲玲</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:; [新增]</font></em><br><em><font
                            color="#EF5644">姓名:<a href="https://www.tianyancha.com/human/2145374310-c1235676115"
                                                  target="_blank">葛萍</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/2353017796-c1235676115" target="_blank">王强</a>,证件类型:中华人民共和国居民身份证,职务:董事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:<a
                            href="https://www.tianyancha.com/human/1802416486-c1235676115" target="_blank">冯现刚</a>,证件类型:中华人民共和国居民身份证,职务:监事,证件号码:****,联系电话:;
                        [新增]</font></em><br><em><font color="#EF5644">姓名:杨方步,证件类型:中华人民共 [新增]</font></em><br></div>
                </td>
            </tr>
            <tr>
                <td>6</td>
                <td>2018-06-25</td>
                <td>注册资本</td>
                <td>
                    <div class="change-text select-none">46500</div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">50220（ + 7.41% ）</font></em></div>
                </td>
            </tr>
            <tr>
                <td>7</td>
                <td>2017-09-05</td>
                <td>管辖机关</td>
                <td>
                    <div class="change-text select-none">370127</div>
                </td>
                <td>
                    <div class="change-text select-none">370127</div>
                </td>
            </tr>
            <tr>
                <td>8</td>
                <td>2017-09-05</td>
                <td>市</td>
                <td>
                    <div class="change-text select-none">-</div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">370100</font></em></div>
                </td>
            </tr>
            <tr>
                <td>9</td>
                <td>2017-09-05</td>
                <td>县（市/区）</td>
                <td>
                    <div class="change-text select-none">-</div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">370127</font></em></div>
                </td>
            </tr>
            <tr>
                <td>10</td>
                <td>2017-09-05</td>
                <td>村（路/社区）</td>
                <td>
                    <div class="change-text select-none">-</div>
                </td>
                <td>
                    <div class="change-text select-none"><em><font color="#EF5644">东区科创路</font></em></div>
                </td>
            </tr>
            </tbody>
        </table><!----><!----><!---->
        <div class="company_pager">
            <ul class="pagination" page-total="30" change-type="changeinfo" line-type-name="changeItem"
                line-type-val="">
                <li><a class="num -current">1</a></li>
                <li><a class="num " onclick="companyPageChange(2,this)">2</a></li>
                <li><a class="num " onclick="companyPageChange(3,this)">3</a></li>
                <li><a class="num -next" onclick="companyPageChange(2,this)">&gt;</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- end [变更信息]--><!-- graph 历史沿革 -->
    <%--<div class="block-data" id="nav-main-graphTimeInfo">
        <div class="data-header">历史沿革
            <div class="data-logo">
                <svg viewBox="0 0 90 20">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                </svg>
            </div>
        </div>
        <div class="data-content" style="position:relative;">
            <div class="btn -sm btn-primary-bd show-all-graph" tyc-event-click="" tyc-event-ch="CompangyDetail.qiyeguanxi"
                 onclick="showAllTimeGraph(true);"><!--<i class="tic tic-expand f14 in-block vertical-top" ></i>--> 全屏查看
            </div>
            <div class="btn -sm btn-primary-bd show-all-graph timeline-d" tyc-event-click=""
                 tyc-event-ch="CompangyDetail.qiyeguanxi" onclick="timlineDownload(true);">
                <!--<i class="tic tic-expand f14 in-block vertical-top" ></i>--> 下载GIF
            </div>
            <iframe data-company-id="1235676115" style="width:100%;height:500px;border:none;"
                    src="https://dis.tianyancha.com/dis/timeline?graphId=1235676115&amp;cnz=true"></iframe>
        </div>
    </div>--%>
<!-- end graph 历史沿革 -->
<!--企业年报OOCSS-->
<div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.nianbao">
    <div class="data-header" id="nav-main-reportCount">公司年报<span class="data-count">5</span>
        <div class="data-logo">
            <svg viewBox="0 0 90 20">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
            </svg>
        </div>
    </div>
    <div class="data-content">
        <div class="report-item-list">
            <div class="report_item" href-new-event="" event-name="企业详情-企业年报"
                 onclick="window.open('https://www.tianyancha.com/reportContent/1235676115/2017','_blank')"><span
                    class="tic tic-report sec-c3"></span><span class="title ml5">2017</span><a class="link-click"
                                                                                               href="https://www.tianyancha.com/reportContent/1235676115/2017"
                                                                                               onclick="common.stopPropagation(event)"
                                                                                               target="_blank">详情</a>
            </div>
            <div class="report_item" href-new-event="" event-name="企业详情-企业年报"
                 onclick="window.open('https://www.tianyancha.com/reportContent/1235676115/2016','_blank')"><span
                    class="tic tic-report sec-c3"></span><span class="title ml5">2016</span><a class="link-click"
                                                                                               href="https://www.tianyancha.com/reportContent/1235676115/2016"
                                                                                               onclick="common.stopPropagation(event)"
                                                                                               target="_blank">详情</a>
            </div>
            <div class="report_item" href-new-event="" event-name="企业详情-企业年报"
                 onclick="window.open('https://www.tianyancha.com/reportContent/1235676115/2015','_blank')"><span
                    class="tic tic-report sec-c3"></span><span class="title ml5">2015</span><a class="link-click"
                                                                                               href="https://www.tianyancha.com/reportContent/1235676115/2015"
                                                                                               onclick="common.stopPropagation(event)"
                                                                                               target="_blank">详情</a>
            </div>
            <div class="report_item" href-new-event="" event-name="企业详情-企业年报"
                 onclick="window.open('https://www.tianyancha.com/reportContent/1235676115/2014','_blank')"><span
                    class="tic tic-report sec-c3"></span><span class="title ml5">2014</span><a class="link-click"
                                                                                               href="https://www.tianyancha.com/reportContent/1235676115/2014"
                                                                                               onclick="common.stopPropagation(event)"
                                                                                               target="_blank">详情</a>
            </div>
            <div class="report_item" href-new-event="" event-name="企业详情-企业年报"
                 onclick="window.open('https://www.tianyancha.com/reportContent/1235676115/2013','_blank')"><span
                    class="tic tic-report sec-c3"></span><span class="title ml5">2013</span><a class="link-click"
                                                                                               href="https://www.tianyancha.com/reportContent/1235676115/2013"
                                                                                               onclick="common.stopPropagation(event)"
                                                                                               target="_blank">详情</a>
            </div>
        </div>
    </div>
</div>
<!-- end [企业年报]-->
<!--[分支机构]--><!-- end [分支机构]--><!--理事会--><!--理事会end--><!--监事会--><!--监事会end-->
<!--=========公司背景end=============-->


    <!--=========司法风险=============-->
    <div class="block-data-group" id="nav-main-lawDangerous">
        <div class="group-title"><span class="text">司法风险</span></div><!--开庭公告-->
        <div class="block-data table-col-warp" tyc-event-click="" tyc-event-ch="CompangyDetail.kaitinggonggao"
             table-col="">
            <div class="data-header" id="nav-main-announcementCount">开庭公告<span class="data-count -warn">1</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
                <div class="table-col-bar" tyc-event-click=""
                     tyc-event-ch="CompangyDetail.announcementcourt.CompanyOwnerSay">
                    <div class="ownersay" onclick="tableCol.toggleBar(this)"><i class="ownersay-img"></i><span
                            class="ownersay-txt">企业主说</span></div>
                    <div class="drop-down hidden" filter-explain-state="" data-filter-name="企业主说明" tyc-event-click=""
                         tyc-event-ch="CompangyDetail.CompanyOwnerSay.Select">
                        <div class="drop-down-btn"><span class="title">企业主说明</span><i class="tic tic-xiala"></i></div>
                        <div class="content"></div>
                    </div>
                    <div class="btn btn-primary-bd ownersay-cancel" onclick="tableCol.hideBar(this)" tyc-event-click=""
                         tyc-event-ch="CompangyDetail.CompanyOwnerSay.Cancel">取消
                    </div>
                </div>
            </div>
            <div class="data-content" id="_container_announcementcourt">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th width="18%">开庭日期</th>
                        <th width="20%">案由</th>
                        <th width="24%">原告/上诉人</th>
                        <th width="">被告/被上诉人</th>
                        <th class="doing-col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>2015-04-13 0:00</td>
                        <td class="left-col"><span>机动车交通事故责任纠纷</span></td>
                        <td class="left-col"><span>-</span></td>
                        <td class="left-col"><span>-</span></td>
                        <td>
                            <script type="text/html">{"startDate":"1428854400000","plaintiff":[],"courtroom":"","caseReason":"机动车交通事故责任纠纷","court":"济南市历下区人民法院","searchType":"null","uni":"a067d1b5106dd0d5d6aad3b8cf0f0e9d","litigant":"中国人民财产保险股份有限公司广州市分公司,李浩友,山东省城市商业银行合作联盟有限公司","id":"17241785","_type":"35","judge":"","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1602842541' target='_blank'\u003E中国人民财产保险股份有限公司广州市分公司\u003C\u002Fa\u003E","\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"caseNo":"（2015）历民初字第488号","eventTime":"1428854400000","defendant":[]}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/announcement&quot;)">详情</span>
                        </td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--开庭公告 end--><!--法律诉讼-->
        <div class="block-data table-col-warp" tyc-event-click="" tyc-event-ch="CompangyDetail.lawsuit" table-col="">
            <div class="data-header" id="nav-main-lawsuitCount">法律诉讼<span class="data-count -warn">4</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
                <div class="table-col-bar" tyc-event-click="" tyc-event-ch="CompangyDetail.lawsuit.CompanyOwnerSay">
                    <div class="ownersay" onclick="tableCol.toggleBar(this)"><i class="ownersay-img"></i><span
                            class="ownersay-txt">企业主说</span></div>
                    <div class="drop-down hidden" filter-explain-state="" data-filter-name="企业主说明" tyc-event-click=""
                         tyc-event-ch="CompangyDetail.CompanyOwnerSay.Select">
                        <div class="drop-down-btn"><span class="title">企业主说明</span><i class="tic tic-xiala"></i></div>
                        <div class="content"></div>
                    </div>
                    <div class="btn btn-primary-bd ownersay-cancel" onclick="tableCol.hideBar(this)" tyc-event-click=""
                         tyc-event-ch="CompangyDetail.CompanyOwnerSay.Cancel">取消
                    </div>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.lawsuit.filter"
                     data-filter-name="案由">
                    <div class="drop-down-btn"><span class="title">案由</span><i class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="companyFilterChange(event,'lawsuit','-100','casereason','不限');">不限
                        </div>
                        <div class="item"
                             onclick="companyFilterChange(event,'lawsuit','借款合同纠纷','casereason','借款合同纠纷（1）');">借款合同纠纷（1）
                        </div>
                        <div class="item"
                             onclick="companyFilterChange(event,'lawsuit','商品房销售合同纠纷','casereason','商品房销售合同纠纷（1）');">
                            商品房销售合同纠纷（1）
                        </div>
                        <div class="item"
                             onclick="companyFilterChange(event,'lawsuit','机动车交通事故责任纠纷','casereason','机动车交通事故责任纠纷（1）');">
                            机动车交通事故责任纠纷（1）
                        </div>
                        <div class="item"
                             onclick="companyFilterChange(event,'lawsuit','民间借贷纠纷','casereason','民间借贷纠纷（1）');">民间借贷纠纷（1）
                        </div>
                    </div>
                </div>
            </div>
            <div class="data-content" id="_container_lawsuit">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th class="date-col">日期</th>
                        <th width="30%">裁判文书</th>
                        <th width="10%">案由</th>
                        <th width="23%">案件身份</th>
                        <th width="">案号</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span>2018-12-31</span></td>
                        <td class="left-col"><a href-new-event="" event-name="企业详情-法律诉讼" class="link-click"
                                                target="_blank"
                                                href="https://www.tianyancha.com/lawsuit/368cce520d7911e9a8b47cd30ae00894">刘兴发与郑克等借款合同纠纷二审民事判决书</a>
                        </td>
                        <td><span>借款合同纠纷</span></td>
                        <td class="left-col link-warp">
                            <div>被上诉人-<a href="https://www.tianyancha.com/company/1235676115" target="_blank">山东省城市商业银行合作联盟有限公司</a>
                            </div>
                        </td>
                        <td class="left-col"><span>（2018）鲁01民终3793号</span></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span>2018-09-20</span></td>
                        <td class="left-col"><a href-new-event="" event-name="企业详情-法律诉讼" class="link-click"
                                                target="_blank"
                                                href="https://www.tianyancha.com/lawsuit/e4532119d4a711e8a8b47cd30ae00894">赵雯、朱古力民间借贷纠纷执行实施类执行裁定书</a>
                        </td>
                        <td><span>民间借贷纠纷</span></td>
                        <td class="left-col link-warp">
                            <div>申请执行人-<a href="https://www.tianyancha.com/company/1235676115" target="_blank">山东省城市商业银行合作联盟有限公司</a>
                            </div>
                        </td>
                        <td class="left-col"><span>（2018）鲁0103执751号</span></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span>2016-11-28</span></td>
                        <td class="left-col"><a href-new-event="" event-name="企业详情-法律诉讼" class="link-click"
                                                target="_blank"
                                                href="https://www.tianyancha.com/lawsuit/62ea892fa8a84afbacb825d2ee0dcf7c">赵贵金与济南名都置业有限公司商品房销售合同纠纷二审民事判决书</a>
                        </td>
                        <td><span>商品房销售合同纠纷</span></td>
                        <td class="left-col link-warp">
                            <div>上诉人-<a href="https://www.tianyancha.com/company/1235676115" target="_blank">山东省城市商业银行合作联盟有限公司</a>
                            </div>
                            <div>被上诉人-<a href="https://www.tianyancha.com/company/2335332249"
                                         target="_blank">济南名都置业有限公司</a></div>
                        </td>
                        <td class="left-col"><span>（2016）鲁01民终6213号</span></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span>2015-05-05</span></td>
                        <td class="left-col"><a href-new-event="" event-name="企业详情-法律诉讼" class="link-click"
                                                target="_blank"
                                                href="https://www.tianyancha.com/lawsuit/ab7700711cb811e6b554008cfae40dc0">山东省城市商业银行合作联盟有限公司与李浩友、中国人民财产保险股份有限公司广州市分公司机动车交通事故责任纠纷一审民事判决书</a>
                        </td>
                        <td><span>机动车交通事故责任纠纷</span></td>
                        <td class="left-col link-warp">
                            <div>原告-<a href="https://www.tianyancha.com/company/1235676115" target="_blank">山东省城市商业银行合作联盟有限公司</a>
                            </div>
                            <div>被告-<a href="https://www.tianyancha.com/company/1602842541" target="_blank">中国人民财产保险股份有限公司广州市分公司</a>
                            </div>
                        </td>
                        <td class="left-col"><span>（2015）历民初字第488号</span></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--法律诉讼 end--><!-- 法院公告--><!-- 法院公告 end--><!--失信人--><!--失信人 end--><!--被执行人--><!--被执行人 end--><!--司法协助-->
    </div>

    <!--司法协助 end-->
    <!--=========司法风险=============-->


    <!--=========经营风险=============-->
    <div class="block-data-group" id="nav-main-manageDangerous">
        <div class="group-title"><span class="text">经营风险</span></div>
        <div class="block-data">
            <div class="no-data">
                <div class="img">&nbsp;</div>
                <div class="msg">暂无相关信息，看看该公司的其他信息</div>
                <div class="msg seo-info-alert"><i class="tic tic-circle-question-o icon"></i>
                    <div class="seo-info">
                        <div class="triangle"></div>
                        截止到当前日期，山东省城市商业银行合作联盟有限公司未出现经营风险，无任何经营异常信息、行政处罚信息、股权出质信息、动产抵押信息、欠税公告信息、司法拍卖信息、清算信息、知识产权出质信息及严重违法信息公布，该公司目前经营状况良好，无经营风险存在。
                    </div>
                </div>
            </div>
        </div><!--经营异常--><!--经营异常 end--><!--行政处罚--><!--行政处罚 end--><!--严重违法--><!--严重违法 end--><!--股权出质--><!--股权出质 end-->
        <!--动产抵押--><!--动产抵押 end--><!--欠税公告--><!--欠税公告 end--><!--司法拍卖--><!--司法拍卖end--><!--环保处罚--><!--环保处罚end-->
        <!--清算信息--><!--清算信息end--><!--知识产权出质--><!--知识产权出质end--><!-- 公示催告 --></div>

    <!--=========企业发展=============-->
    <!--entityType  ==1公司 ，2香港，3社会组织，4律所 5事业单位 6基金会-->
    <!--entityType  ==1   公司-->
    <div class="block-data-group" id="nav-main-develope">
        <div class="group-title"><span class="text">公司发展</span></div><!--融资历史--><!--融资历史end--><!--核心团队--><!--核心团队 end-->
        <!--企业业务-->
        <div class="block-data">
            <div class="data-header" id="nav-main-companyProduct">企业业务<span class="data-count">1</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_firmProduct">
                <div class="product-list"><a class="product" onclick="goToBrand('bb8a7121451','金融',event);">
                    <div class="lazy-img -image">
                        <div class="logo-text -l2 -w64"><span class="text">暂无</span></div>
                        <div class="logo -w64"><img class="img"
                                                    data-src="https://img.tianyancha.com/logo/product/17e8a56749fc87a563394a18c4f7acb1.png@!f_200x200"
                                                    alt="德州银行"
                                                    erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                    src="https://img.tianyancha.com/logo/product/17e8a56749fc87a563394a18c4f7acb1.png@!f_200x200">
                        </div>
                    </div>
                    <span class="text">德州银行</span>
                    <div class="content">
                        <div class="title">德州银行</div>
                        <div class="desc" title="掌上银行服务平台">掌上银行服务平台</div>
                        <div class="tag tag-new-category">金融</div>
                    </div>
                </a></div><!----><!----><!----></div>
        </div><!--企业业务 end--><!--投资事件--><!--投资事件 end--><!--竞品信息-->
        <div class="block-data">
            <div class="data-header" id="nav-main-companyJingpin">竞品信息<span class="data-count">50</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_jingpin">
                <div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="sort-col">序号</th>
                            <th width="22%">产品</th>
                            <th width="10%">地区</th>
                            <th width="10%">当前轮次</th>
                            <th width="10%">行业</th>
                            <th width="18%">业务</th>
                            <th class="date-col">成立时间</th>
                            <th>估值</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/29309850f60be673a8a913944a4707b5.jpg@!f_200x200"
                                                                        alt="随达网络"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/29309850f60be673a8a913944a4707b5.jpg@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b364e350015"
                                               target="_blank">随达网络</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>重庆</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">支付供应链整体方案解决综合运营商</td>
                            <td>2018-05-09</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/ddb509f6a23752caaded7f9660a989c6.png@!f_200x200"
                                                                        alt="小码收钱"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/ddb509f6a23752caaded7f9660a989c6.png@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b45e8254494"
                                               target="_blank">小码收钱</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>上海</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">商户收款营销服务商</td>
                            <td>2017-08-30</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/0c2e5ae2b13de7f0dcd403e37025403f.png@!f_200x200"
                                                                        alt="和联融通科技"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/0c2e5ae2b13de7f0dcd403e37025403f.png@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b5216335261"
                                               target="_blank">和联融通科技</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>贵州</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">专业金融业务机构</td>
                            <td>2017-07-28</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/4dc4c286696209ac46245cc2deb7c6d5.jpg@!f_200x200"
                                                                        alt="钱汇通"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/4dc4c286696209ac46245cc2deb7c6d5.jpg@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/beb08235665"
                                               target="_blank">钱汇通</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>福建</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">融合支付云管理平台</td>
                            <td>2016-11-14</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/08a5d8cd348dfdc645f4ffbc7db71205.png@!f_200x200"
                                                                        alt="旅心付"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/08a5d8cd348dfdc645f4ffbc7db71205.png@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b5d60227110"
                                               target="_blank">旅心付</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>浙江</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">境外支付平台</td>
                            <td>2016-10-31</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>
                                <table class="lazy-img  -text -w36 -image">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/94771abffa0a8ed1eb4d8e077bf7bbc4.jpg@!f_200x200"
                                                                        alt="悦钱宝"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200"
                                                                        src="https://img.tianyancha.com/logo/product/94771abffa0a8ed1eb4d8e077bf7bbc4.jpg@!f_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/bcff4242320"
                                               target="_blank">悦钱宝</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>湖北</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">移动支付、社交广告、金融服务公司</td>
                            <td>2016-07-29</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>
                                <table class="lazy-img  -alias -text -w36">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/c75765f8333182616fe511136545f346.jpg@!f_200x200"
                                                                        alt="银硕支付"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b1701200832"
                                               target="_blank">银硕支付</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>山东</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">支付解决方案服务商</td>
                            <td>2016-04-20</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>
                                <table class="lazy-img  -alias -text -w36">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/95316c29f81972f961d564e1b90bed22.jpg@!f_200x200"
                                                                        alt="Ustellar"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b35f2188234"
                                               target="_blank">Ustellar</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>广东</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">支付网络服务商</td>
                            <td>2016-04-07</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>
                                <table class="lazy-img  -alias -text -w36">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/86d1213089a355bb62fbb5b1e1a76f65.png@!f_200x200"
                                                                        alt="易付天下"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/b5545239684"
                                               target="_blank">易付天下</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>福建</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">移动支付服务平台</td>
                            <td>2016-02-15</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>
                                <table class="lazy-img  -alias -text -w36">
                                    <tbody>
                                    <tr>
                                        <td class="-w36">
                                            <div class="logo-text -l2 -w36"><span class="text">暂无</span></div>
                                            <div class="logo -w36"><img class="img expand-img"
                                                                        data-src="https://img.tianyancha.com/logo/product/3df1d6479c3ebe77277cd74edbe28adf.png@!f_200x200"
                                                                        alt="Cambrist"
                                                                        erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                            </div>
                                        </td>
                                        <td><a class="link-click" href="https://www.tianyancha.com/brand/bc621333292"
                                               target="_blank">Cambrist</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>爱尔兰</td>
                            <td>-</td>
                            <td class="left-col"><a class="link-click" href="https://www.tianyancha.com/brandsearch/金融"
                                                    target="_blank">金融</a></td>
                            <td class="left-col">支付服务云平台</td>
                            <td>2016-01-01</td>
                            <td>-</td>
                        </tr>
                        </tbody>
                    </table><!----><!----><!---->
                    <div class="company_pager">
                        <ul class="pagination" page-total="50" change-type="jingpin" line-type-name="" line-type-val="">
                            <li><a class="num -current">1</a></li>
                            <li><a class="num " onclick="companyPageChange(2,this)">2</a></li>
                            <li><a class="num " onclick="companyPageChange(3,this)">3</a></li>
                            <li><a class="num " onclick="companyPageChange(4,this)">4</a></li>
                            <li><a class="num " onclick="companyPageChange(5,this)">5</a></li>
                            <li><a class="num -next" onclick="companyPageChange(2,this)">&gt;</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--竞品信息 end-->

    <!--=========企业发展=============-->
    <!--=========经营状况=============-->
    <div class="block-data-group" id="nav-main-manageStatus">
        <div class="group-title"><span class="text">经营状况</span></div><!--招聘-->
        <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.zhaopin">
            <div class="data-header" id="nav-main-baipin">招聘<span class="data-count">26</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
                <img class="lazy-img -image" style="float: right;width:78px;height: 26px;margin: -7px 8px 0"
                     onclick="window.open('http://zhaopin.baidu.com/','_blank')"
                     <%--data-src="https://static.tianyancha.com/web-require-js/themes/18blue/images/baipin/baipin.png"
                     alt="baipin"
                     src="https://static.tianyancha.com/web-require-js/themes/18blue/images/baipin/baipin.png"--%>><span
                        style="font-size: 12px;float: right;color: #737373;margin: 4px 0 0 0;font-weight: normal">信息由战略合作伙伴百度百聘提供</span>
            </div>
            <div class="data-content" id="_container_baipin">
                <div class="baipin-list">
                    <div class="zp-item">
                        <table class="zp-table">
                            <tbody>
                            <tr>
                                <td class="bp-t1">
                                    <div class="zp-name">网络融资产品经理（交易金融平台）</div>
                                    <div class="zp-xinzi"><span class="zp-red">50000以上</span><span
                                            class="btn-zt">直投</span></div>
                                    <div class="zp-tag"></div>
                                </td>
                                <td class="bp-t2"><a class="zp-company"
                                                     href="https://www.tianyancha.com/company/1235676115"
                                                     target="_blank">山东省城市商业银行合作联盟有限公司</a>
                                    <div class="zp-diqu">北京&nbsp;|&nbsp;1-3年&nbsp;|&nbsp;本科&nbsp;</div>
                                    <div class="zp-time">2019-01-14</div>
                                </td>
                                <td class="bp-t3"><a class="btn btn-primary bp-btn"
                                                     href="https://zhaopin.baidu.com/szzw?zp_fr=tianyancha&amp;id=http%3A%2F%2Fwww.highpin.cn%2Fjob%2Fb559526.html%3Futm_source%3DbaiduALD-pc%26utm_medium%3Dcpc%26utm_campaign%3DbaiduALD-pc%26utm_term%3DbaiduALD-pc%26utm_content%3DbaiduALD-pc%26fromType%3D788"
                                                     rel="nofollow" target="_blank">更多</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="zp-item">
                        <table class="zp-table">
                            <tbody>
                            <tr>
                                <td class="bp-t1">
                                    <div class="zp-name">数据开发工程师(山东城商行联盟)</div>
                                    <div class="zp-xinzi"><span class="zp-red">8000-12000</span><span
                                            class="btn-zt">直投</span></div>
                                    <div class="zp-tag">
                                        <div class="tag-welfare">五险一金</div>
                                    </div>
                                </td>
                                <td class="bp-t2"><a class="zp-company"
                                                     href="https://www.tianyancha.com/company/1235676115"
                                                     target="_blank">山东省城市商业银行合作联盟有限公司</a>
                                    <div class="zp-diqu">济南&nbsp;|&nbsp;1年以上&nbsp;|&nbsp;本科&nbsp;</div>
                                    <div class="zp-time">2019-01-13</div>
                                </td>
                                <td class="bp-t3"><a class="btn btn-primary bp-btn"
                                                     href="https://zhaopin.baidu.com/szzw?zp_fr=tianyancha&amp;id=http%3A%2F%2Fkg.baidu.com%2Fod%2F4002%2F2004461%2F8005bf4b64f92123c3036cef868cf243"
                                                     rel="nofollow" target="_blank">更多</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="zp-item">
                        <table class="zp-table">
                            <tbody>
                            <tr>
                                <td class="bp-t1">
                                    <div class="zp-name">数据分析师(山东城商行联盟)</div>
                                    <div class="zp-xinzi"><span class="zp-red">面议</span><span class="btn-zt">直投</span>
                                    </div>
                                    <div class="zp-tag">
                                        <div class="tag-welfare">五险一金</div>
                                    </div>
                                </td>
                                <td class="bp-t2"><a class="zp-company"
                                                     href="https://www.tianyancha.com/company/1235676115"
                                                     target="_blank">山东省城市商业银行合作联盟有限公司</a>
                                    <div class="zp-diqu">济南&nbsp;|&nbsp;3年以上&nbsp;|&nbsp;本科&nbsp;</div>
                                    <div class="zp-time">2019-01-13</div>
                                </td>
                                <td class="bp-t3"><a class="btn btn-primary bp-btn"
                                                     href="https://zhaopin.baidu.com/szzw?zp_fr=tianyancha&amp;id=http%3A%2F%2Fkg.baidu.com%2Fod%2F4002%2F2004461%2F22a87de480186c57eae887c81f96f4d5"
                                                     rel="nofollow" target="_blank">更多</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="zp-item">
                        <table class="zp-table">
                            <tbody>
                            <tr>
                                <td class="bp-t1">
                                    <div class="zp-name">数据库运维工程师(山东城商行联盟)</div>
                                    <div class="zp-xinzi"><span class="zp-red">8000-12000</span><span
                                            class="btn-zt">直投</span></div>
                                    <div class="zp-tag">
                                        <div class="tag-welfare">五险一金</div>
                                    </div>
                                </td>
                                <td class="bp-t2"><a class="zp-company"
                                                     href="https://www.tianyancha.com/company/1235676115"
                                                     target="_blank">山东省城市商业银行合作联盟有限公司</a>
                                    <div class="zp-diqu">济南&nbsp;|&nbsp;3年以上&nbsp;|&nbsp;本科&nbsp;</div>
                                    <div class="zp-time">2019-01-13</div>
                                </td>
                                <td class="bp-t3"><a class="btn btn-primary bp-btn"
                                                     href="https://zhaopin.baidu.com/szzw?zp_fr=tianyancha&amp;id=http%3A%2F%2Fkg.baidu.com%2Fod%2F4002%2F2004461%2F8e79abdba23974133ac8d459fc3cf4e"
                                                     rel="nofollow" target="_blank">更多</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!----><!----><!---->
                <div class="company_pager">
                    <ul class="pagination" page-total="26" change-type="baipin" line-type-name="" line-type-val="">
                        <li><a class="num -current">1</a></li>
                        <li><a class="num " onclick="companyPageChange(2,this)">2</a></li>
                        <li><a class="num " onclick="companyPageChange(3,this)">3</a></li>
                        <li><a class="num " onclick="companyPageChange(4,this)">4</a></li>
                        <li><a class="num " onclick="companyPageChange(5,this)">5</a></li>
                        <li><a class="num " onclick="companyPageChange(6,this)">6</a></li>
                        <li><a class="num " onclick="companyPageChange(7,this)">7</a></li>
                        <li><a class="num -next" onclick="companyPageChange(2,this)">&gt;</a></li>
                    </ul>
                </div>
            </div>
            <input type="hidden" id="_baiping_moreWebPath"
                   value="https://zhaopin.baidu.com/company?query=%E5%B1%B1%E4%B8%9C%E7%9C%81%E5%9F%8E%E5%B8%82%E5%95%86%E4%B8%9A%E9%93%B6%E8%A1%8C%E5%90%88%E4%BD%9C%E8%81%94%E7%9B%9F%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;page=positionpage">
        </div><!--招聘 end-->
        <div class="block-data" id="nav-main-licenseAllCount"><!--行政许可（工商局）-->
            <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.getLicense">
                <div class="data-header">行政许可【工商局】<span class="data-count">1</span>
                    <div class="data-logo">
                        <svg viewBox="0 0 90 20">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                        </svg>
                    </div>
                </div>
                <div class="data-content" id="_container_licensing">
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="sort-col">序号</th>
                            <th width="12%">许可书文编号</th>
                            <th width="">许可文件名称</th>
                            <th class="date-col">有效期自</th>
                            <th class="date-col">有效期至</th>
                            <th width="12%">许可机关</th>
                            <th width="20%">许可内容</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Z0006H237010001</td>
                            <td>金融许可证</td>
                            <td>2008年08月08日</td>
                            <td>-</td>
                            <td class="left-col">中国银行业监督管理委员会山东监管局</td>
                            <td class="left-col">许可该机构经营中国银行业监督管理委员会依照有关法律、行政法规和其他规定批准的业务，经营范围以批准文件锁列的为准。</td>
                        </tr>
                        </tbody>
                    </table><!----><!----><!----></div>
            </div><!--行政许可（工商局）end--><!--行政许可（信用中国）-->
            <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.getLicenseCreditchina">
                <div class="data-header" id="nav-main-licensingCount"> 行政许可【信用中国】<span class="data-count">5</span>
                    <div class="data-logo">
                        <svg viewBox="0 0 90 20">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                        </svg>
                    </div>
                </div>
                <div class="data-content" id="_container_licensingXyzg">
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="sort-col">序号</th>
                            <th width="23%">行政许可文书号</th>
                            <th width="">许可决定机关</th>
                            <th class="date-col">许可决定日期</th>
                            <th class="doing-col">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>鲁银监准[2018]213号</td>
                            <td>山东银监局</td>
                            <td>2018-07-11</td>
                            <td>
                                <script type="text/html">{"validityTime":"","licenceNumber":"鲁银监准[2018]213号","dataUpdateTime":"2018-10-08","department":"山东银监局","licenceContent":"核准苏宏卫、张爱民、朱毅达三人董事任职资格","audiType":"核准","decisionDate":"2018-07-11","legalPersonName":"","cid":1235676115,"localCode":"370000","legalPersonId":2344162318}</script>
                                <span class="link-click"
                                      onclick="openPopup(this,&quot;modal/licensingXyzg&quot;)">详情</span></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>鲁银监准[2018]207号</td>
                            <td>山东银监局</td>
                            <td>2018-07-05</td>
                            <td>
                                <script type="text/html">{"validityTime":"","licenceNumber":"鲁银监准[2018]207号","dataUpdateTime":"2018-10-08","department":"山东银监局","licenceContent":"核准葛萍、胡高雷、寇纲、舒萍四人董事任职资格","audiType":"核准","decisionDate":"2018-07-05","legalPersonName":"","cid":1235676115,"localCode":"370000","legalPersonId":2344162318}</script>
                                <span class="link-click"
                                      onclick="openPopup(this,&quot;modal/licensingXyzg&quot;)">详情</span></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>鲁银监准[2018]208号</td>
                            <td>山东银监局</td>
                            <td>2018-07-05</td>
                            <td>
                                <script type="text/html">{"validityTime":"","licenceNumber":"鲁银监准[2018]208号","dataUpdateTime":"2018-10-08","department":"山东银监局","licenceContent":"修改公司章程","audiType":"核准","decisionDate":"2018-07-05","legalPersonName":"","cid":1235676115,"localCode":"370000","legalPersonId":2344162318}</script>
                                <span class="link-click"
                                      onclick="openPopup(this,&quot;modal/licensingXyzg&quot;)">详情</span></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>鲁银监准〔2018〕184号</td>
                            <td>山东银监局</td>
                            <td>2018-06-14</td>
                            <td>
                                <script type="text/html">{"validityTime":"","licenceNumber":"鲁银监准〔2018〕184号","dataUpdateTime":"2018-07-06","department":"山东银监局","licenceContent":"未分配利润转增注册资本","audiType":"核准","decisionDate":"2018-06-14","legalPersonName":"","cid":1235676115,"localCode":"370000","legalPersonId":2344162318}</script>
                                <span class="link-click"
                                      onclick="openPopup(this,&quot;modal/licensingXyzg&quot;)">详情</span></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>高开国税许变更准〔2018〕226号</td>
                            <td>高新区国家税务局</td>
                            <td>2018-04-18</td>
                            <td>
                                <script type="text/html">{"validityTime":"","licenceNumber":"高开国税许变更准〔2018〕226号","dataUpdateTime":"2018-04-23","department":"高新区国家税务局","licenceContent":"准予行政许可文书内容：根据《中华人民共和国行政许可法》第三十八条第一款的规定，决定准予你（单位）取得增值税防伪税控系统最高开票限额为千万元的税务行政许可","audiType":"普通","decisionDate":"2018-04-18","legalPersonName":"史跃峰","cid":1235676115,"localCode":"370191","legalPersonId":1832716535}</script>
                                <span class="link-click"
                                      onclick="openPopup(this,&quot;modal/licensingXyzg&quot;)">详情</span></td>
                        </tr>
                        </tbody>
                    </table><!----><!----><!----></div>
            </div><!--行政许可（信用中国）end--></div><!--税务评级-->
        <div class="block-data">
            <div class="data-header" id="nav-main-taxCreditCount">税务评级<span class="data-count">4</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_taxcredit">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th width="10%">年份</th>
                        <th width="15%">纳税评级</th>
                        <th width="10%">类型</th>
                        <th width="25%">纳税人识别号</th>
                        <th width="">评价单位</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>2017</td>
                        <td>A</td>
                        <td>国税</td>
                        <td>91370000679211970D</td>
                        <td>国家税务总局</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>2016</td>
                        <td>A</td>
                        <td>国税</td>
                        <td>91370000679211970D</td>
                        <td>国家税务总局</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>2015</td>
                        <td>A</td>
                        <td>国税</td>
                        <td>370112679211970</td>
                        <td>国家税务总局</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>2014</td>
                        <td>A</td>
                        <td>国税</td>
                        <td>370112679211970</td>
                        <td>国家税务总局</td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--税务评级 end--><!--抽查检查--><!--抽查检查 end--><!--资质证书-->
        <div class="block-data">
            <div class="data-header" id="nav-main-certificateCount">资质证书<span class="data-count">1</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.zizhi.filter">
                    <div class="drop-down-btn"><span class="title">类型</span><i class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="companyFilterChange(event,'certificate','高新技术企业','type','高新技术企业');">
                            高新技术企业(1)
                        </div>
                    </div>
                </div>
            </div>
            <div class="data-content" id="_container_certificate" tyc-event-click=""
                 tyc-event-ch="CompangyDetail.zhengshu">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th width="26%">证书类型</th>
                        <th width="">证书编号</th>
                        <th class="date-col">发证日期</th>
                        <th class="date-col">截止日期</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span class="link-click"
                                  onclick="certificatePopup('5981ade897bdd811d032ee3b')">高新技术企业</span></td>
                        <td><span>GR201537000418</span></td>
                        <td><span>2015-12-10</span></td>
                        <td><span>-</span></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--资质证书 end--><!--招投标--><!--招投标 end--><!--产品信息-->
        <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.chanpin">
            <div class="data-header" id="nav-main-productinfo">产品信息<span class="data-count">3</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_product">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th>产品名称</th>
                        <th width="20%">产品简称</th>
                        <th width="15%">产品分类</th>
                        <th width="12%">领域</th>
                        <th class="doing-col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>
                            <table class="lazy-img   -text -w36">
                                <tbody>
                                <tr>
                                    <td class="-w36">
                                        <div class="logo -w36"><img class="img expand-img"
                                                                    data-src="https://img.tianyancha.com/appbk/icon/33b78e9e5136da5ac36785036d6625f4.png@!watermark01"
                                                                    alt="齐商直销银行"
                                                                    erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                        </div>
                                    </td>
                                    <td><span>齐商直销银行</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                        <td><span>齐商直销银行</span></td>
                        <td><span>应用</span></td>
                        <td><span>其它</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/product/d10a26889c07ce629a0e7ff220ec845d">详情</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                            <table class="lazy-img   -text -w36">
                                <tbody>
                                <tr>
                                    <td class="-w36">
                                        <div class="logo -w36"><img class="img expand-img"
                                                                    data-src="https://img.tianyancha.com/appbk/icon/151b6cf0a84f4bdaec14bafba83a8e3b.png@!watermark01"
                                                                    alt="齐商银行手机银行"
                                                                    erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                        </div>
                                    </td>
                                    <td><span>齐商银行手机银行</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                        <td><span>齐商银行手机银行</span></td>
                        <td><span>应用</span></td>
                        <td><span>其它</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/product/552ab4f1efa76471c5263cc70c7f19cf">详情</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                            <table class="lazy-img   -text -w36">
                                <tbody>
                                <tr>
                                    <td class="-w36">
                                        <div class="logo -w36"><img class="img expand-img"
                                                                    data-src="https://img.tianyancha.com/appbk/icon/8cd00582103eadae73b51fb96c57c2ac.png@!watermark01"
                                                                    alt="齐商大掌柜"
                                                                    erro-src="https://img.tianyancha.com/logo/teamMember/ye_def.png@!fill_200x200">
                                        </div>
                                    </td>
                                    <td><span>齐商大掌柜</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                        <td><span>齐商大掌柜</span></td>
                        <td><span>应用</span></td>
                        <td><span>其它</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/product/8d3873f21bbaf04d07ceb240d3133564">详情</a></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--产品信息 end--><!--微信公众号--><!--end微信公众号--><!--进出口信用--><!--进出口信用 end--><!--债券信息--><!--债券信息 end-->
        <!--购地信息--><!-- 电信许可 --></div>

    <!--=========知识产权=============-->

    <div class="block-data-group" id="nav-main-knowledgeProperty">
        <div class="group-title"><span class="text">知识产权</span></div><!-- 商标信息 -->
        <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.shangbiao" id="_container_tmInfo">
            <div class="data-header" id="nav-main-tmCount">商标信息<span class="data-count">16</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.shangbiao.filter">
                    <div class="drop-down-btn" data-type="app_year"><span class="title">申请日期</span><i
                            class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','-100','app_year','不限');">不限</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','2018','app_year','2018年（10)');">
                            2018年（10)
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','2015','app_year','2015年（2)');">
                            2015年（2)
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','2010','app_year','2011年及以前（4)');">
                            2011年及以前（4)
                        </div>
                    </div>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.shangbiao.filter">
                    <div class="drop-down-btn" data-type="status"><span class="title">申请状态</span><i
                            class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','-100','status','不限');">不限</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','3','status','待审（7）');">待审（7）</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','2','status','无效（4）');">无效（4）</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','4','status','不定（3）');">不定（3）</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','1','status','有效（2）');">有效（2）</div>
                    </div>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.shangbiao.filter">
                    <div class="drop-down-btn" data-type="category"><span class="title">流程状态</span><i
                            class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','-100','category','不限');">不限</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','1002','category','申请收文（8）');">
                            申请收文（8）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','1031','category','打印驳回通知（3）');">
                            打印驳回通知（3）
                        </div>
                        <div class="item"
                             onclick="brandFilterChange(event,'tmInfo','2726','category','商标注册申请---申请收文（3）');">
                            商标注册申请---申请收文（3）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','1017','category','等待驳回通知发文（1）');">
                            等待驳回通知发文（1）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','1033','category','打印注册证（1）');">
                            打印注册证（1）
                        </div>
                    </div>
                </div>
                <div class="drop-down" tyc-event-click="" tyc-event-ch="CompangyDetail.shangbiao.filter">
                    <div class="drop-down-btn" data-type="int_cls"><span class="title">类别号</span><i
                            class="tic tic-xiala"></i></div>
                    <div class="content">
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','-100','int_cls','不限');">不限</div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','36','int_cls','保险、金融、不动产服务（7）');">
                            保险、金融、不动产服务（7）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','35','int_cls','广告、销售、商业服务（5）');">
                            广告、销售、商业服务（5）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','42','int_cls','科研服务（3）');">
                            科研服务（3）
                        </div>
                        <div class="item" onclick="brandFilterChange(event,'tmInfo','9','int_cls','软件产品、科学仪器（1）');">
                            软件产品、科学仪器（1）
                        </div>
                    </div>
                </div>
            </div>
            <div class="data-content">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th class="date-col">申请日期</th>
                        <th width="10%">商标</th>
                        <th width="15%">商标名称</th>
                        <th width="15%">注册号</th>
                        <th width="19%">类别</th>
                        <th>流程状态</th>
                        <th class="doing-col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智控</span></div>
                                <div class="logo -w-tm"><img class="img"
                                                             <%--data-src="https://tm-image.tianyancha.com/tm/e6137fc223a1c19e9d3417958a4ab032.jpg"
                                                             alt="必达智控"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png"--%>>
                                </div>
                            </div>
                        </td>
                        <td><span>必达智控</span></td>
                        <td><span>31584481</span></td>
                        <td><span>35-广告、销售、商业服务</span></td>
                        <td><span>商标注册申请---申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31584481t35">详情</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智赢</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/51a8a88d9d77e257ee64be19058367c3.jpg"
                                                             alt="必达智赢"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智赢</span></td>
                        <td><span>31590750</span></td>
                        <td><span>42-科研服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31590750t42">详情</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智融</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/41b58a91edc59aee36d6919c3c506465.jpg"
                                                             alt="必达智融"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智融</span></td>
                        <td><span>31590727</span></td>
                        <td><span>35-广告、销售、商业服务</span></td>
                        <td><span>商标注册申请---申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31590727t35">详情</a></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智控</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/5cb85c3df220fa683d6b9939d9c388a5.jpg"
                                                             alt="必达智控"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智控</span></td>
                        <td><span>31584529</span></td>
                        <td><span>42-科研服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31584529t42">详情</a></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智赢</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/d51053d3ad6b499995d0fe18a4deb5b7.jpg"
                                                             alt="必达智赢"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智赢</span></td>
                        <td><span>31590736</span></td>
                        <td><span>35-广告、销售、商业服务</span></td>
                        <td><span>商标注册申请---申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31590736t35">详情</a></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><span>2018-06-13</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智融</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/f65d4a3f62e8eda340014c1aa58f2e36.jpg"
                                                             alt="必达智融"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智融</span></td>
                        <td><span>31601509</span></td>
                        <td><span>42-科研服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/31601509t42">详情</a></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><span>2018-04-18</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img ">
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/0c68a6cdcbd43c490cfca3efef36405f.jpg"
                                                             alt=""
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>-</span></td>
                        <td><span>30345597</span></td>
                        <td><span>36-保险、金融、不动产服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/30345597t36">详情</a></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td><span>2018-04-18</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智控</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/b3f814b657bfc07baaf5550f79281e22.jpg"
                                                             alt="必达智控"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智控</span></td>
                        <td><span>30332079</span></td>
                        <td><span>36-保险、金融、不动产服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/30332079t36">详情</a></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td><span>2018-04-18</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智融</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/f9930d49e3cd812e9e47a2ddea3593ce.jpg"
                                                             alt="必达智融"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智融</span></td>
                        <td><span>30340504</span></td>
                        <td><span>36-保险、金融、不动产服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/30340504t36">详情</a></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><span>2018-04-18</span></td>
                        <td>
                            <div class="lazy-img tmInfo-img -alias">
                                <div class="logo-text -l4 -w-tm"><span class="text">必达智赢</span></div>
                                <div class="logo -w-tm"><%--<img class="img"
                                                             data-src="https://tm-image.tianyancha.com/tm/e7620677f066e6ed9b2289a28701f47a.jpg"
                                                             alt="必达智赢"
                                                             erro-src="https://static.tianyancha.com/wap/images/searchLogo918.png">
                                --%></div>
                            </div>
                        </td>
                        <td><span>必达智赢</span></td>
                        <td><span>30324026</span></td>
                        <td><span>36-保险、金融、不动产服务</span></td>
                        <td><span>申请收文</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/tm/30324026t36">详情</a></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!---->
                <div class="company_pager">
                    <ul class="pagination" page-total="16" change-type="tmInfo" line-type-name="" line-type-val="">
                        <li><a class="num -current">1</a></li>
                        <li><a class="num " onclick="brandPageChange(2,this)">2</a></li>
                        <li><a class="num -next" onclick="brandPageChange(2,this)">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div><!-- end商标信息 --><!--专利信息oocss-->
        <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.zhuzuoquan">
            <div class="data-header" id="nav-main-patentCount">专利信息<span class="data-count">3</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_patent">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th class="date-col">申请公布日</th>
                        <th width="20%">专利名称</th>
                        <th width="18%">申请号</th>
                        <th width="14%">申请公布号</th>
                        <th width="">专利类型</th>
                        <th class="doing-col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span>2018-03-06</span></td>
                        <td class="left-col"><span>一种多账户安全隔离方法及系统</span></td>
                        <td><span>CN201710981988.8</span></td>
                        <td><span>CN107767136A</span></td>
                        <td><span>发明专利</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/patent/45e21284c52fea9e209d6136d5979b6b">详情</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span>2017-12-29</span></td>
                        <td class="left-col"><span>基于大数据的银行零售存款业务数据分析系统及方法</span></td>
                        <td><span>CN201710800148.7</span></td>
                        <td><span>CN107526836A</span></td>
                        <td><span>发明专利</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/patent/1658c4ab07914bc19634769fc98bec78">详情</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span>2017-11-10</span></td>
                        <td class="left-col"><span>带图形用户界面的手机（手机钱包）</span></td>
                        <td><span>CN201730209625.3</span></td>
                        <td><span>CN304349411S</span></td>
                        <td><span>外观专利</span></td>
                        <td><a class="link-click" target="_blank"
                               href="https://www.tianyancha.com/patent/1edf9300a72742489db7549b8ba258aa">详情</a></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!--end专利信息--><!--软件著作权-->
        <div class="block-data">
            <div class="data-header" id="nav-main-cpoyRCount">软件著作权<span class="data-count">27</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_copyright">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th class="date-col">批准日期</th>
                        <th width="">软件全称</th>
                        <th width="12%">软件简称</th>
                        <th width="14%">登记号</th>
                        <th width="14%">分类号</th>
                        <th width="14%">版本号</th>
                        <th class="doing-col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span>2018-11-06</span></td>
                        <td class="left-col"><span>城商行联盟银银合作平台系统</span></td>
                        <td><span>银银合作平台</span></td>
                        <td><span>2018SR889080</span></td>
                        <td><span>30204-6800</span></td>
                        <td><span>V1.0</span></td>
                        <td>
                            <script type="text/html">{"authorNationality":"山东省城市商业银行合作联盟有限公司:中国","simplename":"银银合作平台","searchType":"403","uni":"e94dd34132c293bd6a6f0bec2ec21bd5","version":"V1.0","id":"50219356","_type":"63","regtime":"1541433600000","publishtime":"1483113600000","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"regnum":"2018SR889080","catnum":"30204-6800","eventTime":"1541433600000","fullname":"城商行联盟银银合作平台系统"}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/copyRight&quot;)">详情</span>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span>2018-11-06</span></td>
                        <td class="left-col"><span>城商行联盟互联网理财系统</span></td>
                        <td><span>互联网理财系统</span></td>
                        <td><span>2018SR889081</span></td>
                        <td><span>30204-6800</span></td>
                        <td><span>V1.0</span></td>
                        <td>
                            <script type="text/html">{"authorNationality":"山东省城市商业银行合作联盟有限公司:中国","simplename":"互联网理财系统","searchType":"403","uni":"74887963abd9ee27cc43b538689c8ab0","version":"V1.0","id":"50219380","_type":"63","regtime":"1541433600000","publishtime":"1492272000000","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"regnum":"2018SR889081","catnum":"30204-6800","eventTime":"1541433600000","fullname":"城商行联盟互联网理财系统"}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/copyRight&quot;)">详情</span>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span>2018-11-06</span></td>
                        <td class="left-col"><span>城商行联盟集中作业平台系统</span></td>
                        <td><span>集中作业平台</span></td>
                        <td><span>2018SR889079</span></td>
                        <td><span>30204-6800</span></td>
                        <td><span>V1.0</span></td>
                        <td>
                            <script type="text/html">{"authorNationality":"山东省城市商业银行合作联盟有限公司:中国","simplename":"集中作业平台","searchType":"403","uni":"08f1b12310224dfe1adcb215e4df6dae","version":"V1.0","id":"50219498","_type":"63","regtime":"1541433600000","publishtime":"1504195200000","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"regnum":"2018SR889079","catnum":"30204-6800","eventTime":"1541433600000","fullname":"城商行联盟集中作业平台系统"}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/copyRight&quot;)">详情</span>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span>2017-07-27</span></td>
                        <td class="left-col"><span>城商行联盟电子印章系统</span></td>
                        <td><span>电子印章</span></td>
                        <td><span>2017SR403698</span></td>
                        <td><span>30204-6800</span></td>
                        <td><span>V1.0</span></td>
                        <td>
                            <script type="text/html">{"authorNationality":"山东省城市商业银行合作联盟有限公司:中国","simplename":"电子印章","searchType":"403","uni":"15fec4ef40fc2f414281d5a62deb1b0c","version":"V1.0","id":"2726669","_type":"63","regtime":"1501084800000","publishtime":"1446134400000","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"regnum":"2017SR403698","catnum":"30204-6800","eventTime":"1501084800000","fullname":"城商行联盟电子印章系统"}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/copyRight&quot;)">详情</span>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span>2017-07-27</span></td>
                        <td class="left-col"><span>城商行联盟实物贵金属销售系统</span></td>
                        <td><span>实物金销售系统</span></td>
                        <td><span>2017SR403452</span></td>
                        <td><span>30204-6800</span></td>
                        <td><span>V1.0</span></td>
                        <td>
                            <script type="text/html">{"authorNationality":"山东省城市商业银行合作联盟有限公司:中国","simplename":"实物金销售系统","searchType":"403","uni":"5ecea5135ce2f81e4371d5e63b9b9147","version":"V1.0","id":"2726667","_type":"63","regtime":"1501084800000","publishtime":"1476633600000","connList":["\u003Ca href='https:\u002F\u002Fwww.tianyancha.com\u002Fcompany\u002F1235676115' target='_blank'\u003E山东省城市商业银行合作联盟有限公司\u003C\u002Fa\u003E"],"regnum":"2017SR403452","catnum":"30204-6800","eventTime":"1501084800000","fullname":"城商行联盟实物贵金属销售系统"}</script>
                            <span class="link-click" onclick="openPopup(this,&quot;modal/copyRight&quot;)">详情</span>
                        </td>
                    </tr>
                    </tbody>
                </table><!----><!----><!---->
                <div class="company_pager">
                    <ul class="pagination" page-total="27" change-type="copyright" line-type-name="" line-type-val="">
                        <li><a class="num -current">1</a></li>
                        <li><a class="num " onclick="companyPageChange(2,this)">2</a></li>
                        <li><a class="num " onclick="companyPageChange(3,this)">3</a></li>
                        <li><a class="num " onclick="companyPageChange(4,this)">4</a></li>
                        <li><a class="num " onclick="companyPageChange(5,this)">5</a></li>
                        <li><a class="num " onclick="companyPageChange(6,this)">6</a></li>
                        <li><a class="num -next" onclick="companyPageChange(2,this)">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div><!--end软件著作权--><!--作品著作权--><!--作品著作权end--><!-- 网站备案oocss -->
        <div class="block-data" tyc-event-click="" tyc-event-ch="CompangyDetail.Icp">
            <div class="data-header" id="nav-main-icpCount">网站备案<span class="data-count">6</span>
                <div class="data-logo">
                    <svg viewBox="0 0 90 20">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-tyc-logo"></use>
                    </svg>
                </div>
            </div>
            <div class="data-content" id="_container_icp">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="sort-col">序号</th>
                        <th class="date-col">审核时间</th>
                        <th width="18%">网站名称</th>
                        <th width="12%">网站首页</th>
                        <th width="13%">域名</th>
                        <th width="16%">备案号</th>
                        <th class="status-col">状态</th>
                        <th width="">单位性质</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司主页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.bankalliance.com.cn"
                               title="http://www.bankalliance.com.cn" rel="nofollow" target="_blank">www.bankalliance.com.cn</a>
                        </td>
                        <td>banksalliance.com</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司主页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.bankalliance.com.cn"
                               title="http://www.bankalliance.com.cn" rel="nofollow" target="_blank">www.bankalliance.com.cn</a>
                        </td>
                        <td>banksalliance.net</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司主页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.bankalliance.com.cn"
                               title="http://www.bankalliance.com.cn" rel="nofollow" target="_blank">www.bankalliance.com.cn</a>
                        </td>
                        <td>banksalliance.cn</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司主页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.bankalliance.com.cn"
                               title="http://www.bankalliance.com.cn" rel="nofollow" target="_blank">www.bankalliance.com.cn</a>
                        </td>
                        <td>bankalliance.com.cn</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司测试网页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.ebanktest.com.cn"
                               title="http://www.ebanktest.com.cn" rel="nofollow"
                               target="_blank">www.ebanktest.com.cn</a></td>
                        <td>ebanktest.com.cn</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><span>2018-09-25</span></td>
                        <td><span>山东省城市商业银行合作联盟有限公司主页</span></td>
                        <td><a class="link-click icpinfo-width" href="http://www.bankalliance.com.cn"
                               title="http://www.bankalliance.com.cn" rel="nofollow" target="_blank">www.bankalliance.com.cn</a>
                        </td>
                        <td>banksalliance.com.cn</td>
                        <td><span>鲁ICP备13008484号</span></td>
                        <td><span>正常</span></td>
                        <td><span>企业</span></td>
                    </tr>
                    </tbody>
                </table><!----><!----><!----></div>
        </div><!-- end 网站备案 --></div>


</div>


<br/>

