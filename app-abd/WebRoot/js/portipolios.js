function milestone(e){
    		$("#milestone").show()
    		//$(".card-header-right-icon ul").show()
    		$("#achievement").hide();
    		$("#li9").hide();
    		var year=$("#years span").html();
    		var month=$("#months span").html();
    		var time=year+"-"+month
    		var id=$(e).attr("id")
    		/* if(id=="6"){
    			time="";
    		} */
    		//里程碑
    	    $.ajax({
    			  url: "education.do?staffCode=18060404&date="+time,
    			  type: "GET",
    			  dataType:"json",
    			  success: function(result){
    	  			console.log(result);
    	  			console.log("++");
    	  			$(".left-items").html("");
    	     	    $(".right-items").html("");
    	     	    var s;
    	            var list=result.list;
    	            if(list.length==0){
    	            	$(".education-main .container").hide();
    	            	$(".null").show()
    	            }else{
    	            	$(".education-main .container").show();
    	            	$(".null").hide()
    	            }
    	            var color=["#1de9b6","#03a9f5","#dd4b39","#f39c12"]
    	            var leftRight="";
    	           	for(var i=0;i<list.length;i++){
    	           		if(i%2==0){
    	           			leftRight="left";
    	               	}else{
    	               		leftRight="right";
    	               	};
    	          		s="<li>"+
    	          			"<div style='float:"+leftRight+";padding:10px;font-size:20px;'><i class='ti-save-alt color-success' onclick='video(this)'></i></div>"+
    	          			"<div style='border:5px solid #eef1f6;background-color:	#F5F5F5'>"+
    		                   	"<h3>"+list[i].incident+"</h3>"
    		                   	+"<div style='font-family:楷体;font-size:18px;'>"+list[i].inspiration+"</div>"
    		                   	+"<h4>"+list[i].time+"</h4>"
    	                   	+"</div>"
    	                   	+"<span>"+"</span>"
    	               	+"</li>";
    	               	
    	       			if(i%2==0){
    	       				$(".left-items").append(s);
    	               	}else{
    	               		$(".right-items").append(s);
    	               	};
    	        		}; 
    			  }
    		});
    	}
    	//小红花等信息的点击事件
    	function getJson(e){
    		$("#milestone").hide()
    		$("#achievement").show();
    		$(".card-header-right-icon ul").hide()
    		var type=$(e).attr("id");
    		$.ajax({
	    		  url: "portipolioJson.do?staffCode=18060404&type="+type,
	    		  type: "GET",
	    		  dataType:"json",
	    		  success: function(result){
	    			  console.log("===============================")
	    			  console.log(result.portipolio1)
		    			var year = result.years;  //2016,2017
		    		    var portipolio = result.portipolio1; 
		    		    option.legend.data.splice(0,option.legend.data.length);
		    	    	option.series.splice(0,option.series.length);
		    	    	var color=["#1de9b6","#03a9f5","#a389d5"]
	    		    	for(var i=0;i<year.length;i++){
	    		    		option.legend.data[i]=year[i].year+"年";
	    		    		option.series.push({"name":year[i].year+"年","type":"bar","data":[],"itemStyle":{"normal":{"color":color[i],"label":{"show": true,"position":"top"}}}});
	    		    		for(var j=0;j<portipolio[i].length;j++){
	    						option.series[i].data.push(parseInt(portipolio[i][j].itegral));
	    		    		}
	    		    	};
	    		    	if(type=="0"){
	    		    		option.title.text="小红花 ";
	    		    		option.yAxis[0].max=40;
		    		    	option.yAxis[0].interval=10;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}else if(type=="4"){
	    		    		option.title.text="优质服务奖金 ";
	    		    		option.yAxis[0].max=600;
		    		    	option.yAxis[0].interval=50;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 元';
	    		    	}else if(type=="1"){
	    		    		option.title.text="单项奖个数  ";
	    		    		option.yAxis[0].max=10;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}
	    		    	else if(type=="2"){
	    		    		option.title.text="单项奖积分 ";
	    		    		option.yAxis[0].max=10;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 分';
	    		    	}
	    		    	else if(type=="3"){
	    		    		option.title.text="优质服务积分 ";
	    		    		option.yAxis[0].max=16;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 分';
	    		    	}
	    		    	else if(type="5"){
	    		    		option.title.text="小优质服务个数 ";
	    		    		option.yAxis[0].max=100;
		    		    	option.yAxis[0].interval=10;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}
	    		    	if (option && typeof option === "object") {
	    				    myChart.setOption(option, true);
	    				}
	    		  }
	    	});
    	}
    	
    	
    	
    	function video(){
	    	$("#video").html("");
	    	id=1;
	    	if(id==1){
	    		$("#video").show();
	    	}
	    	var videoDemo="<video src='https://www.datacenterlab.cn/audio/qiaobusi.mp4' controls autoplay height='300px' width='300px'></video>"
	    	$("#video").append(videoDemo)
	    }