      
        var beginData=nowDate(33).substring(0,7);   //定义开始时间
		var endData=nowDate(0).substring(0,7);    //定义结束时间
		var reqName="";     //点击的名称
	
		
		//初始化页面 
		navType();
		initDayDate();
	
		
		var navUl=$('.navigation ul');
		//生成档案导航数据
		function navType(){
			 $.ajax({
	             type: "POST",
	             url: "date/monthType.do",
	             data: {beginMonth:beginData, endMonth:endData},
	             dataType: "json",
	             success: function(data){
	            	 closeDiv();
	            	 navUl.html("");
	            	 if(data.length>0){
	            		 for(var i=0;i<data.length;i++){
	            			 navUl.append("<li><a href='#' >"+data[i]+"</a></li>"); 
	            	  }
	            		 reqName=data[0];
	            		 console.log($('.navigation li:first').attr("class","active"));
	            		 callDataMonth(beginData,endData,reqName);
	            		 
	            	 }else{
	            		 closeDiv();
	            		 alert("该时间段没有数据,请更换时间段");
	            	 }
	            	
	              }
	         });
		}
		
		
		//刷新页面或者初始化页面函数 
		function initDayDate(){
			$('#datetimepicker1 .form-control').attr("value",beginData);
			$('#datetimepicker2 .form-control').attr("value",endData);
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
				navType();
				callDataMonth(beginData,endData,reqName);
			});
			
			
		
	    
			//点击档案栏
			 
			navUl.on('click','li',function(){
				openDiv();
				var pageIndex=$(this).index();
				$('.navigation li').removeClass();
				$(this).attr("class","active");
				reqName=$(this).find('a').text();
                console.log(reqName);
				callDataMonth(beginData,endData,reqName);
				
			}); 
			
			
			
			//用来查询数据的函数
			function callDataMonth(){
				 $.ajax({
		             type: "POST",
		             url: "date/monthDate.do",
		             data: {beginMonth:beginData, endMonth:endData,staType:reqName},
		             dataType: "json",
		             success: function(data){
		            	 closeDiv();
		            	 var objDa={};
		            	 objDa.text=reqName;
		            	 var main= document.getElementById('main');
		            	 var dateMonth=[];
		            	 var dateCount=[];
		            //	 objDa.seriesData=[];
		            	 for(var i=0;i<data.length;i++){
		            		 dateMonth.push(data[i].month.substring(0,7));
		            		 dateCount.push(data[i].count);
		            	 }
		          
		            	 objDa.xAxisData=dateMonth;
		            	// objDa.seriesData.push(dateCount);
		            	 objDa.seriesData=[dateCount];
		            	 objDa.data=[reqName];
		            	 echarts.init(main).setOption(optionData (objDa)); 
		            	
		            	
		              }
		         });
			}
	    
	    
		

		

		
		
		

		