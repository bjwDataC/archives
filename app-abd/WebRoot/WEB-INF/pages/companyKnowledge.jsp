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
	#main-content1 span{
		height: 0;position: absolute;top: 10px;left: -40px;
	    border-top: 16px solid transparent;
	    border-left: 32px solid #03a9f5;display: inherit;
	    border-bottom: 16px solid transparent;
	}
	
</style>
<%@include file="incloudCSS.jsp"%>
</head>
<body class="sidebar-hide">
	<%@ include file="left.jsp"%>


	<%@ include file="top.jsp"%>

	<!-- /# sidebar -->


	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<div class="button-list">
									<button type="button"
										class="btn btn-default btn-rounded m-b-10"
										style="margin-top: 6px;" id="1" onclick="clickButtom(this)">
										公司知识</button>
									<button type="button"
										class="btn btn-primary btn-rounded m-b-10 m-l-5"
										style="margin-top: 6px;" id="2" onclick="clickButtom(this)">管理知识</button>
									<button type="button"
										class="btn btn-success btn-rounded m-b-10 m-l-5"
										style="margin-top: 6px;" id="3" onclick="clickButtom(this)">读书心得</button>
								</div>
							</div>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title">
								<div class="card-header-right-icon" style="margin-top: 10px;">
									<ul>
										<!-- <li class="card-close" style="border:1px solid #e7e7e7;padding:8px 15px;">
                                        	<i class="ti-angle-right"></i>
                                        </li>
                                        <li class="doc-link" style="border:1px solid #e7e7e7;padding:8px 15px;">
                                        	<i class="ti-angle-left"></i>
                                        </li> -->

										<!-- <li id="4" onclick="clickButtom(this)">
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
												<a href="#" class="list-group-item" onclick="getMonth(this)">01</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">02</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">03</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">04</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">05</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">06</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">07</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">08</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">09</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">10</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">11</a>
												<a href="#" class="list-group-item" onclick="getMonth(this)">12</a>
											</div>
										</li>
										<li id="years"
											style="border: 1px solid #e7e7e7; z-index: 9999 !Important; min-height: 30px; min-width: 98px; margin: 0; padding: 0; position: absolute; right: 200px; overflow: hidden;"
											onmouseleave="yearlist()" onmouseover="listyear()"><span
											style="display: inline-block; padding-left: 15px;"></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down"
											style="line-height: 30px;"></i>
											<div id="listyear" hidden></div>
										</li> -->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /# column -->
				</div>

				<!-- 新员工入职培训和公司公共课 -->
				<section id="main-content">
				<div class="col-lg-12">
					<div class="card alert">
						<div class="card-header">
							<h4 style="font-weight: 500; font-size: 25px;">新员工入职培训和公司公共课</h4>
						</div>
						<div class="card-header">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>

									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /# card -->
				</div>
				</section>
				<!-- 读书心得 -->
				<section id="readingFeeling" hidden>
				<div class="col-lg-12">
					
					<div class='col-lg-2'>
						<%-- <div class='card alert'>
							<img src="${basePath}/images/avatar/book1.jpg" style="width:200px;height:300px;"> 
						</div>
						<div class='card alert'>
							<img src="${basePath}/images/avatar/book2.jpg" style="width:200px;height:300px;">
						</div>
						<div class='card alert'>
							<img src="${basePath}/images/avatar/book3.jpg" style="width:200px;height:300px;">
						</div> --%>
						
					</div>
					<div id="main-content1" class='col-lg-8' style="border-left:2px solid #CCCCCC;margin-left:255px;"></div>
					<!-- /# card -->
				</div>
				</section>


				<!-- 管理干部储备池 -->
				<section id="manage" hidden>
				<div class="col-lg-12">
					<div class="card alert">
						<div class="card-header">
							<h4 style="font-weight: 500; font-size: 25px;">管理干部储备池</h4>
						</div>
						<div class="card-header">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>序号</th>
											<th style='width: 200px;'>班级</th>
											<th style='width: 200px;'>期数</th>
											<th style='width: 450px;'>成绩</th>
											<th>排名</th>
											<th>年份</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /# card -->
				</div>
				</section>
				<!-- 任职资格答辩 -->
				<section class="qualification" hidden>
				<div class="col-lg-12">
					<div class="card alert">
						<div class="card-header">
							<h4 style="font-weight: 500; font-size: 25px;">任职资格答辩</h4>
						</div>

					</div>
					<div id="qualification">
						<div class='card alert'>
							<table class='table table-hover'>
								<thead>
									<tr>
										<th>序号</th>
										<th style='width: 200px;'>目前职称</th>
										<th style='width: 200px;'>申请职称</th>
										<th style='width: 450px;'>目前职称启用时间</th>
										<th>申请职称启用时间</th>
										<th>答辩时间</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>

					</div>
					<!-- /# card -->
				</div>
				</section>

				<section> <!-- /# column -->
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
				<!-- /# row --> </section>
			</div>
		</div>
	</div>

	<div id="stutas" hidden></div>
	<div id="search">
		<button type="button" class="close">×</button>
		<form>
			<input type="search" value="" placeholder="type keyword(s) here" />
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
	</div>
	<!-- jquery vendor -->
	<%@include file="incloudeJS.jsp"%>
	<script>
		function clickButtom(e) {
			var stutas = $(e).attr("id");
			var chapter="";
			if (e == "") {
				stutas = 1;
			}
			console.log($(e).attr("name"))
			if($(e).attr("name")=="book"){
				stutas =3;
				chapter=$(e).next().html();
				console.log(chapter)
			}
			/* 
			//这段代码是有时间选择时的内容
			if (stutas == "4") {
				stutas = $("#stutas").html();
			} else {
				$("#stutas").html(stutas);
			}
			var date = $("#years span").html() + "-" + $("#months span").html()+ "-01"
			console.log(date) */
			$.ajax({
				type : 'get', //传输类型
				url : 'companyData.do?stutas=' + stutas + '&date='+'&chapter='+chapter,
				dataType : 'json', //返回数据形式为json
				success : function(result) {
					if (stutas == "1") {
						$("#main-content").show();
						$("#readingFeeling").hide();
						$("#manage").hide();
						$(".qualification").hide();
						$("#main-content .table thead").html("");
						$("#main-content .table tbody").html("");
						$("#months").hide();
						
						var score = "";
						console.log(result.companyList);
						console.log("============================")
						if (result.inductionTrainingList.length != 0) {
							score = result.inductionTrainingList[0].staffCode
						}
						var thead = "<tr><th >序号</th><th style='width:200px;'>类别</th><th style='width:200px;'>级别</th><th style='width:450px;'>课程名称</th><th>成绩</th><th>日期</th></tr>"
						$("#main-content .table thead").append(thead)
						
						for (var i = 0; i < result.companyList.length; i++) {
							var random = Math.floor(Math.random()* (0 - 68 + 1) + 68);
							var color = '#'+ Math.floor(Math.random() * 0xffffff).toString(16);
							var tr = "<tr>"
									+ "<th scope='row'>"
									+ (i + 1)
									+ "</th>"
									+ "<td>"
									+ result.companyList[i].type
									+ "</td>"
									+ "<td>"
									+ result.companyList[i].content
									+ "</td>"
									+ "<td><span class='badge' style='background-color:"+color+";'>"
									+ result.companyList[i].managerReply
									+ "</span></td>"
									+ "<td style='color:"+color+";'>"
									+ result.companyList[i].staffCode
									+ "</td>" + "<td>"
									+ result.companyList[i].time
									+ "</td>" + "</tr>";
							$("#main-content .table tbody").append(tr);
						}
						$("#main-content .table tbody")
								.append(
										"<tr><th scope='row'>"
												+ (result.companyList.length + 1)
												+ "</th><td>新员工培训</td><td>公司级</td><td><span class='badge badge-primary'>新员工入职培训</span></td><td class='color-primary'>"
												+ score
												+ "</td><td></td></tr>")
					} else if (stutas == "2") {
						$("#months").show();
						$("#main-content").hide();
						$("#readingFeeling").hide();
						$("#manage").show();
						$(".qualification").show();
						$("#manage .table tbody").html("");
						$("#qualification .table tbody").html("")
						console.log(result)
						console.log("=========")
						for (var i = 0; i < result.management.length; i++) {
							var score = result.management[i].score.substring(0,result.management[i].score.indexOf("."))
							console.log(score)
							var tr = "<tr>" + "<th scope='row'>"
									+ (i + 1) + "</th>" + "<td>"
									+ result.management[i].classGrade
									+ "</td>" + "<td>"
									+ result.management[i].periods
									+ "</td>"
									+ "<td><span class='badge'>"
									+ score + "</span></td>" + "<td>"
									+ result.management[i].ranking
									+ "</td>" + "<td>"
									+ result.management[i].year
									+ "</td>" + "</tr>";
							$("#manage .table tbody").append(tr)
						}

						for (var i = 0; i < result.qualification.length; i++) {
							if(result.qualification[i].nowStartTime==null){
								result.qualification[i].nowStartTime="无数据";
							}
							var tr = "<tr>"
									+ "<th scope='row'>"
									+ (i + 1)
									+ "</th>"
									+ "<td>"
									+ result.qualification[i].nowPosition
									+ "</td>"
									+ "<td>"
									+ result.qualification[i].aplayForPosition
									+ "</td>"
									+ "<td><span class='badge'>"
									+ result.qualification[i].nowStartTime
									+ "</span></td>"
									+ "<td>"
									+ result.qualification[i].aplayForStartTime
									+ "</td>" + "<td>"
									+ result.qualification[i].date
									+ "</td>" + "</tr>";
							$("#qualification .table tbody").append(tr)
						}
					} else {
						console.log(result)
						$("#months").show();
						$("#main-content").hide();
						$("#readingFeeling").show();
						$("#manage").hide();
						$(".qualification").hide();
						$("#main-content1").html("");
						$(".col-lg-2").html("");
						var image_color="";
						for(var i=0;i<result.bookName.length;i++){
							if(i==0){
								image_color="image_color"
							}else{
								image_color=""
							}
							var div="<div class='card alert' name='book'>"+
										"<img name='book' onclick='findBook(this)' src='${basePath}/images/avatar/"+result.bookName[i]+".jpg' style='width:217px;height:300px;'>"+
										"<span hidden id='bookSpan'>"+result.bookName[i]+"</span>"+
									"</div>"
							$(".col-lg-2").append(div)
						}
						$(".col-lg-2 .card:first-child").css("backgroundColor","#D3D3D3")
						//读书心得
						for (var i = 0; i < result.readingFeelingList.length; i++) {
							//if(result.readingFeelingList[i].type)
							var div ="<div class='col-lg-12' style='width:180px;position:absolite;height:50px;left:-220px;top:50px;background-color:white;padding:0 0 0 5px;line-height:50px;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;'>"
									+result.readingFeelingList[i].managerReply+"</div>"+
									"<div class='col-lg-12' style='background-color:white;margin-left:20px;'>"+
									"<div style='height:50px;line-height:50px;'>"+result.readingFeelingList[i].time+"</div><div style='padding:0 0 20px 0;'>"+result.readingFeelingList[i].content+"</div>"+
									"<span></span>"+
									"</div>"
							$("#main-content1").append(div);
						}
						
					}

				}
			});
		}

		$(document).ready(function() {
				//对于时间的操作
				/* var myDate = new Date();
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
				$("#years span").html(myDate.getFullYear()) */
				clickButtom("")
			});
		//以下是对于有时间时的操作
		/* function getMonth(e) {
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
		} */
		
		
		function findBook(e){
			var chapter=$(e).next().html();
			$(e).parent().css("backgroundColor","#D3D3D3");
			$(e).parent().siblings().css("backgroundColor","");
			$.ajax({
				type : 'get', //传输类型
				url : 'companyData.do?stutas=3' + '&date='+'&chapter='+chapter,
				dataType : 'json', //返回数据形式为json
				success : function(result) {
					$("#main-content").hide();
					$("#readingFeeling").show();
					$("#manage").hide();
					$(".qualification").hide();
					$("#main-content1").html("");
					for (var i = 0; i < result.readingFeelingList.length; i++) {
						//if(result.readingFeelingList[i].type)
						var div ="<div class='col-lg-12' style='width:180px;position:absolite;height:50px;left:-220px;top:50px;background-color:white;padding:0 0 0 5px;line-height:50px;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;'>"
								+result.readingFeelingList[i].managerReply+"</div>"+
								"<div class='col-lg-12' style='background-color:white;margin-left:20px;'>"+
								"<div style='height:50px;line-height:50px;'>"+result.readingFeelingList[i].time+"</div><div style='padding:0 0 20px 0;'>"+result.readingFeelingList[i].content+"</div>"+
								"<span></span>"+
								"</div>"
						$("#main-content1").append(div);
					}
					
				}
			});
		}
	</script>

</body>

</html>