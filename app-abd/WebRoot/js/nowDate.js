         //获取当前时间
	      function nowDate( day){
	    	var nowdate = new Date();
			var date = new Date(nowdate-day*24*3600*1000);
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			if (month < 10) {
			    month = "0" + month;
			}
			if (day < 10) {
			    day = "0" + day;
			}
			var nowDate = year + "-" + month + "-" + day;
			return nowDate;
		}
	      
	      
	    
	    
	  