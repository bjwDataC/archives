
function search(e) {
	var year = $("#years span").html();
	var month = $("#months span").html();
	var time = year + "-" + month + "-01"
	var stutas = $(e).attr("id");
	if (stutas == "4") {
		stutas = $("#stutas").html();
	} else {
		$("#stutas").html(stutas);
	}
	if (e == "") {
		stutas = "2";
	}
	$.ajax({
		type : 'get', //传输类型
		url : 'spiritualHome.do?date='+ time + '&stutas=' + stutas,
		dataType : 'json', //返回数据形式为json
		success : function(result) {
			if (stutas == "1") {
				console.log(daySummarize)
				$(".card-header h4").html("日总结")
				$("#month").hide();
				$("#day").show();
				$("#months").show();
				$(".managerEvaluation").hide();
				$(".timeline").html("");
				var daySummarize = result.daySummarize;
				if (daySummarize.length == 0) {
					$(".timeline").append("<li style='text-align:center;font-size:30px ;'>无数据</li>")
				}
				for (var i = 0; i < daySummarize.length; i++) {
					var random = Math.floor(Math.random()
							* (0 - 68 + 1) + 68);
					var color = '#'
							+ Math.floor(
									Math.random() * 0xffffff)
									.toString(16);
					var time =""; 
					if(daySummarize[i].time!=null){
						time=daySummarize[i].time.substring(0, 19)
					}
					var li = "<li>"
							+ "<div class='timeline-badge success'><i class='fa fa-check-circle-o'></i></div>"
							+ "<div class='timeline-panel'>"
							+ "<div class='timeline-heading'>"
							+ "<h5 class='timeline-title'style='font-size:25px;'>"
							+ daySummarize[i].content
							+ "</h5>"
							+ "</div>"
							+ "<div class='timeline-body' style='float:left;'>"
							+ "<p style='color:	#00BFFF;'>"
							+ time
							+ "</p>"
							+ "</div>"
							+ "<div class='comment-action' style='float:right;'>"
							+ "<span class='m-l-10'>"
							+ "</span>"
							+ "<div class='badge badge-success'><a href='#'><i class='ti-arrow-left' style='color:white;'></i></a>时间</div>"
							+ "</div>" + " </div>" + "</li>";
					$(".timeline").append(li)
				}
			} else if (stutas == "2") {
				$(".card-header h4").html("月总结")
				$("#month").show();
				$("#months").show();
				$("#day").hide();
				$(".managerEvaluation").hide();
				$(".recent-comment").html("");
				var monthSummarize = result.monthSummarize;
				if (monthSummarize.length == 0) {
					$(".recent-comment")
							.append(
									"<div style='text-align:center;font-size:30px ;'>无数据</div>")
				}
				//月数据
				for (var i = 0; i < monthSummarize.length; i++) {
					var li = "<div class='media'>"
							+ "<div class='media-left'>"
							+ "<a href='#'><img class='media-object' src='/app-abd/images/avatar/1.jpg' alt='...'></a>"
							+ "</div>"
							+ "<div class='media-body'>"
							+ "<h4 class='media-heading' style='font-size:23px;'>"
							+ "<span style='font-size:25px;'>"+monthSummarize[i].type+"</span>"
							+ "："
							+ monthSummarize[i].content
							+ "</h4>"
							+ "<p style='font-size:22px;'><span style='font-size:22px;color:#F39C12;'>经理回复：</span>"
							+ monthSummarize[i].managerReply
							+ "</p>"
							+ "<div class='comment-action'>"
							+ "<div class='badge badge-success'>时间<a href='#'><i class='ti-arrow-right' style='color:white;'></i></a></div>"
							+ " <span class='m-l-10'>"
							+ "</span>"
							+ "</div>"
							+ "<p class='comment-date' style='background-color:#1DE9B6;border-radius:5px;padding:0 15px;color:white;'>"
							+ monthSummarize[i].time + "</p>"
							+ "</div>" + "</div>";
					$(".recent-comment").append(li)
				}
			} else {
				$(".card-header h4").html("经理评价")
				$(".managerEvaluation").show();
				$("#day").hide();
				$("#month").hide();
				$("#months").hide();
				$(".managerEvaluation").html("")

				var managerEvaluation = result.managerEvaluation;
				if (managerEvaluation.length == 0) {
					$(".managerEvaluation")
							.append(
									"<div style='text-align:center;font-size:30px ;'>无数据</div>")
				}
				//经理评价
				for (var i = 0; i < managerEvaluation.length; i++) {
					var div = "<div class='row'>"
							+ "<div class='col-lg-12'>"
							+ "<div class='card alert'>"
							+ "<div class='product-2-details'>"
							+ "<table class='table'>"
							+ "<tbody>"
							+ "<tr>"
							+ "<td>"
							+ "<div class='product-2-img'>"
							+ "<img src='assets/images/product_1/download.jpg' alt='' />"
							+ "</div>"
							+ "</td>"
							+ "<td style='width:1350px;'>"
							+ "<div class='product-2-des'>"
							+ "<div class='product_name'>"
							+ "<h4 style='font-size:23px;'><text style='color:green;'>经理评价：</text>"
							+ managerEvaluation[i].content
							+ "</h4>"
							+ "</div>"
							+ "<div class='product_des'>"
							+ "<p style='font-size:20px;'><text style='color:green;'>经理姓名：</text>"
							+ managerEvaluation[i].staffCode
							+ "<span style='display:block;float:right;'>时间："
							+ managerEvaluation[i].time
							+ "</span></p>"
							+ "</div>"
							+ "</div>"
							+ "</td>"
							+ "<td>"
							+ "<div class='product-2-button'>"
							+ "<div class='prdt_add_to_cart'>"
							+ "<button type='button' class='btn btn-danger btn-lg btn-rounded m-b-10 m-l-5'>"
							+ managerEvaluation[i].type
							+ "</button>"
							+ "</div>"
							+ "</div>"
							+ "</td>"
							+ "</tr>"
							+ "</tbody>"
							+ "</table>"
							+ "</div>"
							+ "</div>"
							+ "</div>" + "</div>";
					$(".managerEvaluation").append(div);
				}
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
	var month=myDate.getMonth()
	if(month<10){
		month="0"+month
	}
	
	$("#months span").html(month);
	if(myDate.getMonth()==0){
		$("#months span").html(12);
		$("#years span").html(myDate.getFullYear()-1)
	}else{
		$("#years span").html(myDate.getFullYear())
	}
	search("");
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