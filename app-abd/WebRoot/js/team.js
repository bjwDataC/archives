$.ajax({
       	type : 'get',  //传输类型
       	url : 'teamData.do?date=2018',
       	dataType : 'json', //返回数据形式为json
       	success : function(result) {
           	console.log(result)
           	if(result.length==0){
           		var div="<div class='card' style='width:99%;margin-left:0.5%;text-align:center;height:200px;line-height:200px;font-size:30px;'>无数据</div>"
           		$("#row-content").append(div);
           	}
           	for(var i=0;i<result.length;i++){
           		var random = Math.floor(Math.random()*(0-30+1)+30);
           		var div="<div class='card p-0 col-lg-12' style='width:95%;margin-left:2.5%;'>"+
			                "<div class='stat-widget-three home-widget-three'>"+
				                "<div class='stat-icon' style='background-color:"+color[random]+";'>"+
				                    "<i class='"+icon_F[random]+"'></i>"+
				                "</div>"+
				                "<div class='stat-content' style='height:85px;'>"+
				                   " <div class='stat-digit'>类型:"+result[i].type+"</div>"+
				                    "<div class='stat-text' style='padding:0 20px;;'>内容:"+result[i].content+"<span style='display:inline-block;float:right;'>时间："+result[i].time+"</span></div>"+
				                "</div>"+
				            "</div>"+
				        "</div>";
				 $("#row-content").append(div);
           	}
       	} 
	});