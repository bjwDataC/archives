
      /*基本信息*/
         // 定义一个年份
         var year='';
         var oParent=document.getElementById('echChart');
         
          
	    	$.ajax({
				type : "POST",
				url : "basicInfo/attYear.do",
				dataType : "json",
				success : function(data) {
					console.log(data);
					if(data.length>0){
						var mySel = document.createElement("select"); //创建select
						$(mySel).attr("class",'selectpicker');
						 console.log(mySel);
						$(".mySelect").append(mySel);
						var obj = $('.selectpicker');
						for (var i = 0; i < data.length; i++) {
							$(obj).append("<option value="+i+">"+data[i]+"</option>");
						}
						year=data[0];
						attendDate(year);
						console.log("_)_)__");
						adm(year);
						console.log("_)_)__");
						
					}
				}
			}); 
	    	
	    	
	    	
				
				 $(".mySelect").on('change','.selectpicker',function(){
						 year=$(".mySelect option:selected").text();
						 attendDate(year)
				 });

      
				 function attendDate(year){
					 $.ajax({
				         type: "GET",
				         url: "basicInfo/Attendance.do",
				         data: {year:year},
				         dataType: "json",
				         success: function(data){
				        		echarts.init(oParent).setOption(optionData (data)); 
				                  }
				     });
				 }
				 
				 //用来查询行政数据
				 function adm(year){
					 $.ajax({
				         type: "GET",
				         url: "basicInfo/adm.do",
				         data: {year:year},
				         dataType: "json",
				         success: function(data){
				        	 console.log(data);
				                  }
				     });
				 }
			
				 
	 
	 
	
	 
	
	
	