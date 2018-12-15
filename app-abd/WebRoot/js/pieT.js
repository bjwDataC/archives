


//<div  id="main" style="width: 600px;height:400px;"></div>
//  var obj={
//		   text: '某站点用户访问来源', 
//		   data:[
//               {value:335, name:'直接访问'},
//               {value:310, name:'邮件营销'},
//               {value:234, name:'联盟广告'},
//               {value:135, name:'视频广告'},
//               {value:1548, name:'搜索引擎'}
//           ]
//          };
 //echarts.init(main).setOption(option(obj)); 	
 
var objName=function(obj){
	 console.log(obj);
	 var nameData=[];
	 
	  for(var i=0;i<obj.data.length;i++){
		 nameData.push(obj.data[i].name);
	 } 
	 return nameData;
 };
 var option=function(obj){
	var option={};
	option.title={};
	option.legend={};
	option.series=[];
	option.title.text=obj.text;
	option.title.subtext="数据中心";
	option.title.x="center";
	 tooltip = {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    }
	 option.tooltip=tooltip;
	 option.legend.orient="vertical";
	 option.legend.left="left";
	 option.legend.data=objName(obj);
	 seriesData={};
	 seriesData.name="访问来源";
	 seriesData.type="pie";
	 seriesData.radius="55%";
	 seriesData.center=['50%', '60%'];
	 seriesData.data=obj.data;
	 itemStyle= {
         emphasis: {
             shadowBlur: 10,
             shadowOffsetX: 0,
             shadowColor: 'rgba(0, 0, 0, 0.5)'
         }
     }
	 seriesData.itemStyle=itemStyle;
	 option.series.push(seriesData);
	 
	return option;
}  