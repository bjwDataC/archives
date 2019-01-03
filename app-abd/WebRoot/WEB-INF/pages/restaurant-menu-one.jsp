<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
#listmonth a {
	border-radius: 0;
	border-left: 0;
	border-right: 0;
}
</style>
<%@include file="incloudCSS.jsp"%>
</head>
<body class="sidebar-hide">
	<%@ include file="left.jsp"%>
	<%@ include file="top.jsp"%>
	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header" style="padding-top: 10px;">
							<button type="button" class="btn btn-primary m-b-10 m-l-5"
								onclick="search(this)" id="2">月总结</button>
							<button type="button" class="btn btn-success m-b-10 m-l-5"
								onclick="search(this)" id="1">日总结</button>
							<button type="button" class="btn btn-warning m-b-10 m-l-5"
								onclick="search(this)" id="3">经理评价</button>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title" style="height: 54px;">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li class="active">Home</li>
								</ol>
							</div>
						</div>
					</div>
				</div>

				<div class="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card alert">
								<div class="card-header"
									style="border-bottom: 2px solid #e7e7e7;">
									<h4 style="font-size: 25px; letter-spacing: 15px;">月总结</h4>
									<div class="card-header-right-icon">
										<ul>
											<li id="4" onclick="search(this)">
												<button type="button" class="btn btn-default m-b-10"
													style="height: 30px; line-height: 10px;">搜索</button>
											</li>
											<li id="months"
												style="border: 1px solid #e7e7e7; z-index: 9999 !Important; min-height: 30px; min-width: 98px; margin: 0; padding: 0; position: absolute; right: 100px; overflow: hidden;"
												onmouseleave="monthlist()" onmouseover="listmonth()"><span
												style="display: inline-block; padding-left: 15px; margin-right: 15px;"></span>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down"
												style="line-height: 30px;"></i>
												<div id="listmonth" hidden>
													<a href="#" class="list-group-item"
														onclick="getMonth(this)">01</a> <a href="#"
														class="list-group-item" onclick="getMonth(this)">02</a> <a
														href="#" class="list-group-item" onclick="getMonth(this)">03</a>
													<a href="#" class="list-group-item"
														onclick="getMonth(this)">04</a> <a href="#"
														class="list-group-item" onclick="getMonth(this)">05</a> <a
														href="#" class="list-group-item" onclick="getMonth(this)">06</a>
													<a href="#" class="list-group-item"
														onclick="getMonth(this)">07</a> <a href="#"
														class="list-group-item" onclick="getMonth(this)">08</a> <a
														href="#" class="list-group-item" onclick="getMonth(this)">09</a>
													<a href="#" class="list-group-item"
														onclick="getMonth(this)">10</a> <a href="#"
														class="list-group-item" onclick="getMonth(this)">11</a> <a
														href="#" class="list-group-item" onclick="getMonth(this)">12</a>
												</div></li>
											<li id="years"
												style="border: 1px solid #e7e7e7; z-index: 9999 !Important; min-height: 30px; min-width: 98px; margin: 0; padding: 0; position: absolute; right: 200px; overflow: hidden;"
												onmouseleave="yearlist()" onmouseover="listyear()"><span
												style="display: inline-block; padding-left: 15px;"></span>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down"
												style="line-height: 30px;"></i>
												<div id="listyear" hidden></div></li>

										</ul>


									</div>
								</div>
								<div id="month" class="recent-comment m-t-20"
									style="max-height: none;"></div>
								<div id="day" class="card alert" hidden>
									<div class="card-body">
										<ul class="timeline" style="max-height: none; min-height: 0;">

										</ul>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="managerEvaluation" hidden></div>
				<section id="main-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer">
							<p>
								This dashboard was generated on <span id="date-time"></span> <a
									href="#" class="page-refresh">Refresh Dashboard</a>
							</p>
						</div>
					</div>
				</div>
				</section>
				<div id="stutas" hidden>2</div>
			</div>
		</div>
	</div>
	<!-- jquery vendor -->
	<%@include file="incloudeJS.jsp"%>
	<script>
		//搜索点击事件
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
						url : 'spiritualHome.do?staffCode=14071801&date='
								+ time + '&stutas=' + stutas,
						dataType : 'json', //返回数据形式为json
						success : function(result) {
							if (stutas == "1") {
								$(".card-header h4").html("日总结")
								$("#month").hide();
								$("#day").show();
								$("#months").show();
								$(".managerEvaluation").hide();
								$(".timeline").html("");
								var daySummarize = result.daySummarize;
								if (daySummarize.length == 0) {
									$(".timeline")
											.append(
													"<li style='text-align:center;font-size:30px ;'>无数据</li>")
								}
								for (var i = 0; i < daySummarize.length; i++) {
									var random = Math.floor(Math.random()
											* (0 - 68 + 1) + 68);
									var color = '#'
											+ Math.floor(
													Math.random() * 0xffffff)
													.toString(16);
									var time = daySummarize[i].time.substring(
											0, 19)
									var li = "<li>"
											+ "<div class='timeline-badge success'><i class='fa fa-check-circle-o'></i></div>"
											+ "<div class='timeline-panel'>"
											+ "<div class='timeline-heading'>"
											+ "<h5 class='timeline-title'>"
											+ daySummarize[i].content
											+ "</h5>"
											+ "</div>"
											+ "<div class='timeline-body' style='float:left;'>"
											+ "<p>"
											+ time
											+ "</p>"
											+ "</div>"
											+ "<div class='comment-action' style='float:right;'>"
											+ "<span class='m-l-10'>"
											+ "<a href='#'><i class='ti-check color-success'></i></a>"
											+ "<a href='#'><i class='ti-close color-danger'></i></a>"
											+ "<a href='#'><i class='fa fa-reply color-primary'></i></a>"
											+ "</span>"
											+ "<div class='badge badge-success'>Approved</div>"
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
											+ "<a href='#'><img class='media-object' src='${basePath}/images/avatar/1.jpg' alt='...'></a>"
											+ "</div>"
											+ "<div class='media-body'>"
											+ "<h4 class='media-heading'>"
											+ monthSummarize[i].type
											+ "："
											+ monthSummarize[i].content
											+ "</h4>"
											+ "<p>经理回复："
											+ monthSummarize[i].managerReply
											+ "</p>"
											+ "<div class='comment-action'>"
											+ "<div class='badge badge-success'>Approved</div>"
											+ " <span class='m-l-10'>"
											+ "<a href='#'><i class='ti-check color-success'></i></a>"
											+ "<a href='#'><i class='ti-close color-danger'></i></a>"
											+ "<a href='#'><i class='fa fa-reply color-primary'></i></a>"
											+ "</span>"
											+ "</div>"
											+ "<p class='comment-date' style='padding-right:30px;'>"
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
											+ "<td style='width:1150px;'>"
											+ "<div class='product-2-des'>"
											+ "<div class='product_name'>"
											+ "<h4><text style='color:green;font-size:20px;'>经理评价：</text>"
											+ managerEvaluation[i].content
											+ "</h4>"
											+ "</div>"
											+ "<div class='product_des'>"
											+ "<p><text style='color:green;font-size:20px;'>经理姓名：</text>"
											+ managerEvaluation[i].staffCode
											+ "<span style='display:inline-block;margin-left:700px;'>时间："
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
		$(document)
				.ready(
						function() {
							var myDate = new Date();
							var year = myDate.getFullYear();
							for (var i = 0; i < 10; i++) {
								$("#listyear")
										.append(
												"<a href='#' style='border-radius:0;border-left:0;border-right:0;' class='list-group-item' onclick='getYear(this)'>"
														+ year + "</a>")
								year--;
							}
							var month=myDate.getMonth()+1
					    	if(month<10){
					    		month="0"+month
					    	}
					    	$("#months span").html(month);
							$("#years span").html(myDate.getFullYear())
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
	</script>

</body>

</html>