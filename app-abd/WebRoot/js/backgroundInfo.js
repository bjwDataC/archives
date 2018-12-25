 /* 基本信息的样式 */
             $.ajax({
                 type: "GET",
                 url: "basicInfo/backGroup.do",
                 data: {},
                 dataType: "json",
                 success: function(obj){
                	$(".contact-information").append("")
                	Object.keys(obj).forEach(function(index) {
                       if(obj[index]!=null&&obj[index]!=''&&index!='tyContent'){
                    	   var  contact="<div class='phone-content'>"+
                           "<span class='contact-title' style='color: brown;'>"+index+":"+"</span>"+
                           "<span class='phone-number'>"+obj[index]+"</span>"+
                          "</div>";
                    	 $(".contact-information").append(contact)
                       }   	  

                	});
                	
                	$(".contact-information").append("")
                	if(obj.tyContent.length>0){
                		for(var i=0;i<obj.tyContent.length;i++){
                			 var  conta="<div class='phone-content'>"+
                             "<span class='contact-title' style='color: brown;'>"+obj.tyContent[i].type+":"+"</span>"+
                             "<span class='phone-number'>"+obj.tyContent[i].content+"</span>"+
                            "</div>";
                      	 $(".contact-information").append(conta)
                    	}
                	}
                	           	 
                 }
                           
             });