<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<script>var _ctx = '<%=request.getContextPath()%>'</script>
<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/js/commen/echarts.min4.js"></script>
<script src="${ctx}/static/js/commen/ObjTree.js"></script>
<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="main" style="width: 100%;height:99%;"></div>
<script>

    /**
     * xml dom树转字符串
     */
    function xml2String(xmlObject) {
        if(window.ActiveXObject){
            return xmlObject.xml;
        }else{
            return (new XMLSerializer()).serializeToString(xmlObject);
        }
    }



    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    //加载数据
    $.get('${ctx}/detail/graph.do', function (data) {//function (xmlObject) {
//        var xml = xml2String(xmlObject);//xml Dom树 转字符串
//        var xotree = new XML.ObjTree();
//        var json = xotree.parseXML(xml);//解析xml字符串转json
//        var graph =json.gexf.graph;




        var graph = JSON.parse(data);//转json格式数据
//        var graph = echarts.dataTool.gexf.parse(xmlObject);

        var categories = [];
        for (var i = 0; i < 9; i++) {
            categories[i] = {
                name: '类目' + i
            };
        }
         /*$.each(function (node) {
             node.itemStyle = null;
             node.value = node.symbolSize;
             node.symbolSize /= 1.5;
             node.label = {
                 normal: {
                     show: node.symbolSize > 30
                 }
             };
             node.category = node.attributes.modularity_class;
         });*/
        var option = {
            title: {
                text: 'Les Miserables',
                subtext: 'Default layout',
                top: 'bottom',
                left: 'right'
            },
            tooltip: {},
            legend: [{
                // selectedMode: 'single',
                data: categories.map(function (a) {
                    return a.name;
                })
            }],
            animationDuration: 1500,
            animationEasingUpdate: 'quinticInOut',
            series: [
                {
                    name: 'Les Miserables',
                    type: 'graph',
                    layout: 'none',
                    data: graph.nodes,
                    links: graph.links,
                    edgeSymbol: ['circle', 'arrow'],
                    categories: categories,
                    roam: true,
                    focusNodeAdjacency: true,
                    itemStyle: {
                        normal: {
                            borderColor: '#fff',
                            borderWidth: 1,
                            shadowBlur: 10,
                            shadowColor: 'rgba(0, 0, 0, 0.3)'
                        }
                    },
                    label: {
                        position: 'right',
                        formatter: '{b}'
                    },
                    lineStyle: {
                        color: 'source',
                        curveness: 0.3
                    },
                    emphasis: {
                        lineStyle: {
                            width: 10
                        }
                    }
                }
            ]
        };
        myChart.setOption(option);
    });


</script>