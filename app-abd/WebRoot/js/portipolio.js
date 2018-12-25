
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
app.title = '折柱混合';

option = {
	   title : {
        text: '小红花',
        
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            crossStyle: {
                color: '#999'
            }
        }
    },
    toolbox: {
        feature: {
            dataView: {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },
    legend: {
        data:['2016年','2017年','2018年']
    },
    xAxis: [
        {
            type: 'category',
            data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
            axisPointer: {
                type: 'shadow'
            }
        },
    ],
    yAxis: [
        {
            type: 'value',
            min: 0,
            max: 40,
            interval: 10,
            axisLabel: {
                formatter: '{value} 个',
                textStyle: {
                    color: '#000000'
                }
            },
            axisLine:{
            	lineStyle:{color:"#cccccc"}
            }
        },
        {
            type: 'value',
            axisLine:{
            	lineStyle:{color:"#cccccc"}
            }
            
        }
    ],
    series: [
        {
            name:'2016年',
            type:'bar',
            data:[0, 0, 0]
        },
        {
            name:'2017年',
            type:'bar',
            data:[0, 0, 0, 0, 0]
        },
        {
            name:'2018年',
            type:'bar',
            data:[0, 0, 0, 0, 0,0 ]
        }
        
    ]
};
;
window.onresize = function() {
    //重置容器高宽
    myChart.resize();
};
if (option && typeof option === "object") {
	
    myChart.setOption(option, true);
    myChart.resize();
    
   
}
