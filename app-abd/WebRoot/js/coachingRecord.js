function clickButtom(){
	var date=$("#years span").html()
	console.log(date)
	console.log("没有找到")
	$(".main-content").html("");
	$.ajax({
       	type : 'get',  //传输类型
       	url : 'coachingRecord.do?date='+date,
       	dataType : 'json', //返回数据形式为json
       	success : function(result) {
           	console.log(result)
           	for(var i=0;i<result.length;i++){
           		console.log("==========")
           		var div="<div class='row'>"+
			                "<div class='col-lg-12'>"+
			                "<div class='card alert'>"+
			                    "<div class='product-2-details'>"+
			                        "<table class='table'>"+
			                            "<tbody>"+
			                                "<tr>"+
			                                    "<td>"+
			                                        "<div class='product-2-img'>"+
			                                            "<img src='assets/images/product_1/download.jpg' alt='' />"+
			                                        "</div>"+
			                                    "</td>"+
			                                    "<td style='width:1150px;'>"+
			                                        "<div class='product-2-des'>"+
			                                            "<div class='product_name'>"+
			                                                "<h4><text style='color:green;font-size:20px;'>内容：</text>"+result[i].content+"</h4>"+
			                                            "</div>"+
			                                            "<div class='product_des'>"+
			                                                "<p><text style='color:green;font-size:20px;'>经理回复：</text>"+result[i].managerReply+"</p>"+
			                                            "</div>"+
			                                        "</div>"+
			                                    "</td>"+
			                                    "<td>"+
			                                        "<div class='product-2-button'>"+
			                                            "<div class='prdt_add_to_cart'>"+
			                                                "<button type='button' class='btn btn-danger btn-lg btn-rounded m-b-10 m-l-5'>"+result[i].type+"</button>"+
			                                                "<button type='button' class='btn btn-primary btn-lg btn-rounded m-b-10 m-l-5'>"+result[i].time+"</button>"+
			                                            "</div>"+
			                                        "</div>"+
			                                    "</td>"+
			                                "</tr>"+
			                            "</tbody>"+
			                        "</table>"+
			                    "</div>"+
			                "</div>"+
			            "</div>"+
			        "</div>"
				 $(".main-content").append(div)
           	}
       	} 
	});
	
}
	    
$(document).ready(function() {
	var myDate = new Date();
	var year = myDate.getFullYear();
	for (var i = 0; i < 10; i++) {
		$("#listyear").append("<a href='#' style='border-radius:0;border-left:0;border-right:0;' class='list-group-item' onclick='getYear(this)'>"+ year + "</a>")
		year--;
	}
	var month = myDate.getMonth() + 1
	if (month < 10) {
		month = "0" + month
	}
	$("#months span").html(month);
	$("#years span").html(myDate.getFullYear())
	clickButtom("")
});
function getMonth(e) {
	$("#listmonth").hide();
	$("#months span").html($(e).html());
}
function getYear(e) {
	$("#listyear").hide();
	$("#years span").html($(e).html());
}
//年月列表的点击事件
function listmonth() {
	$("#listmonth").show();
}
function listyear() {
	$("#listyear").show();
}
//控制年月列表的显示与隐藏
function monthlist() {
	$("#listmonth").hide();
}
function yearlist() {
	$("#listyear").hide();
}