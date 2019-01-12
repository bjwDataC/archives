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
										<ul hidden>
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
				<%@ include file="bottom.jsp" %>
				<div id="stutas" hidden>2</div>
			</div>
		</div>
	</div>
	<!-- jquery vendor -->
	<%@include file="incloudeJS.jsp"%>
	<script type="text/javascript" src="${basePath}/js/spiritualHome.js"></script>

</body>

</html>