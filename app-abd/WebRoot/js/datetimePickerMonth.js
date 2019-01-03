var picker1 = $('#datetimepicker1').datetimepicker({
			language : 'zh-CN',
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 3,
			minView : 3,
			weekStart: 1,
			forceParse : 0,
	        format: 'yyyy-mm',
		    //pickerPosition:'buttom-right'//日期插件弹出的位置
	        startDate:nowDate(600),
			endDate:new Date(),
		}).on('hide',function(event){
			event.preventDefault();   //例如，当点击提交按钮时阻止对表单的提交
	        event.stopPropagation();   //调用该方法后，该节点上处理该事件的处理程序将被调用，事件不再被分派到其他节点。
	        var startTime = event.date;
	        console.log(startTime);
	        $('#datetimepicker2').datetimepicker('setStartDate',startTime);
	        $('#datetimepicker1 .form-control').css({ color: "#ff0011"});
	        $('#datetimepicker2').val("");
		});

		var picker2 = $('#datetimepicker2').datetimepicker({
			language : 'zh-CN',
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 3,
			minView : 3,
			weekStart: 1,
			forceParse : 0,
			format: 'yyyy-mm',
		    //pickerPosition:'buttom-right'//日期插件弹出的位置
	        startDate:nowDate(600),
	        startDate:nowDate(600),
			endDate:new Date()
		}).on('hide',function(event){
			event.preventDefault();
			event.stopPropagation();
			var endTime =event.date;
			 $('#datetimepicker1').datetimepicker('setEndDate',endTime );
			 $('#datetimepicker2 .form-control').css({ color: "#ff0011"});
		});
		
	
		

		 	
		 	
		 	
		 	
		 	