
//  用来分装的折线图跟柱状图结合
//  --用法
//<div  id="main" style="width: 600px;height:400px;"></div>
// var objDa={
//	      		data:['蒸发量','降水量'],
//	      		text:"某地区蒸发量和降水量",
//	      		xAxisData:['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
//	      		seriesData:[
//	              	[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
//	              	[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
//	              ],
//	              }   
//     数据展现形式
// var main= document.getElementById('main');
// echarts.init(main).setOption(optionData (objDa)); 

    function optionData (obj) {
    	var option={};
        option.title={};
        option.tooltip={};
        option.legend={};
        option.calculable={};
        option.title.text=obj.text;
        option.title.subtext="数据中心";
        option.tooltip.trigger='axis';
        option.legend.data=obj.data;
        option.xAxis=[];
        option.series=[];
        xAxisObj={};     
        toolbox={
            show : true,
            feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        };
        option.toolbox=toolbox;
        option.calculable="true";
        xAxisObj.type='category';
        xAxisObj.data=obj.xAxisData;
        option.xAxis.push(xAxisObj);
        yAxis = [
            {
                type : 'value'
            }
        ]
        option.yAxis=yAxis;
        pointData=[
            {type : 'max', name: '最大值'},
            {type : 'min', name: '最小值'}
        ];
        lineData = [
            {type : 'average', name : '平均值'}
        ];
        for(var i=0;i<obj.seriesData.length;i++){
        	seriesObj={};
        	seriesObj.name=obj.data[i];
        	seriesObj.type='bar';
        	seriesObj.data=obj.seriesData[i];
        	seriesObj.markPoint={};
        	seriesObj.markLine={};
        	seriesObj.markPoint.data=pointData;
        	seriesObj.markLine.data=lineData;
        option.series.push(seriesObj);
        }
      return option;
    };
	
