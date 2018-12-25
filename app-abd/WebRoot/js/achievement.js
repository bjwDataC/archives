
	

var oParent=document.getElementById('echChart');
	 $.ajax({
         type: "GET",
         url: "basicInfo/Attendance.do?staffCode=18060405",
         data: {},
         dataType: "json",
         success: function(data){
        		echarts.init(oParent).setOption(optionData (data)); 
                  }
     });
	 
	 
	
	 
	
	
	