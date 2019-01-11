        var beginData="";  //定义开始时间
		var endData="";    //定义结束时间
		var reqUrl="";     //定义请求
	
		
		//初始化页面 
		initDayDate();
		
		//刷新页面或者初始化页面函数 
		function initDayDate(){
			//往时间日历中添加数据
			 reqUrl="date/Info.do";
			  beginData=nowDate(30); 
			$('#datetimepicker1 .form-control').attr("value",beginData);
			  endData=nowDate(0);
			$('#datetimepicker2 .form-control').attr("value",endData);
			
			callDayDate(reqUrl,beginData ,endData)	
		}
		
		
	    //当点击搜索按钮时 
			$(".btn-primary").click(function() {
				openDiv();
				beginData = $('#datetimepicker1 .form-control').val();
				endData = $('#datetimepicker2 .form-control').val();
		
				if (beginData == '' || endData == '') {
					alert("请输入开始时间或者结束时间");
				}
				if(endData<=beginData){
					alert("Error:  结束时间小于开始时间");
				}
				callDayDate(reqUrl,beginData ,endData);
			});
		
	    
			//点击档案栏
			 var navUl=$('.navigation ul');
			navUl.on('click','li',function(){
				openDiv();
				var pageIndex=$(this).index();
				$('.navigation li').removeClass();
				$(this).attr("class","active");
				var navName=$(this).find('a').attr("class");
			      reqUrl="date/"+navName+".do";
			      callDayDate(reqUrl,beginData ,endData);
			}); 
	    
	    
		

		
		//调用日数据 
		function callDayDate(reqUrl,beginData ,endData){
			 console.log("========callDayDate==========");
			 console.log("reqUrl  "+reqUrl+"beginData  "+beginData+"endData  "+endData);
			$("#mainDiv").html("");
			 $.ajax({
	             type: "POST",
	             url: reqUrl,
	             data: {beginData:beginData, endData:endData},
	             dataType: "json",
	             success: function(data){
	            	 console.log(data);
	            	 closeDiv();
	            	  var b={};
	             	  var a=new Array();
	             	  var divMain=document.getElementById('mainDiv');
	            	 for(var i=0;i<data.allList.length;i++){
	            		 a[i]=new Array();
	            		 a[i].push(data.allList[i]);
	            		 b[i]={};
	            		 b[i].data=[data.strName[i]]; 
	            		 b[i].text=data.strName[i];
	            		 b[i].xAxisData=data.dateList;
	            		 b[i].seriesData=a[i];
	            		 
	            		 //创建div 
	            		 var dayDiv=document.createElement("div");
	            		 dayDiv.setAttribute("id","main"+i);
	            		 dayDiv.setAttribute("style","width: 900px;height:300px;");
	            		 divMain.append(dayDiv);
	            	 	 var main=  document.getElementById('main'+i);
		            	 echarts.init(main).setOption(optionData (b[i]));   
	            	 } 
	              }
	         });
		}
		
		
		

		