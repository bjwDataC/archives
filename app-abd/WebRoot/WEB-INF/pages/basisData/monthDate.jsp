<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${basePath}/css/lib/font-awesome.min.css" rel="stylesheet">
<link href="${basePath}/css/lib/themify-icons.css" rel="stylesheet">
<link href="${basePath}/css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="${basePath}/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="${basePath}/css/lib/unix.css" rel="stylesheet">
<link href="${basePath}/css/style.css" rel="stylesheet">
<link href="${basePath}/css/myCss/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="${basePath}/css/myCss/loading.css" rel="stylesheet">
<SCRIPT language=javascript>
	function closeDiv() {
		document.getElementById('loading').style.visibility = 'hidden';
	}
	function openDiv() {
		document.getElementById('loading').style.visibility = 'visible';
	}
</SCRIPT>

</head>

<body>

	<%@ include file="../loading.jsp"%>

	<%@ include file="../left.jsp"%>

	<%@ include file="../top.jsp"%>


	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>经营数据</h1>
							</div>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">经营数据</a></li>
									<li class="active">日数据</li>
								</ol>
							</div>
						</div>
					</div>
					<!-- /# column -->
				</div>
				<!-- /# row -->
				<section id="main-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="card alert">
							<div class="card-header">

								<div class="card-header-right-icon">
									<ul>
										<li class="card-close" data-dismiss="alert"><i
											class="ti-close"></i></li>
										<li class="card-option drop-menu"><i class="ti-settings"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="true" role="link"></i>
											<ul class="card-option-dropdown dropdown-menu">
												<li><a href="#"><i class="ti-loop"></i> Update data</a></li>
												<li><a href="#"><i class="ti-menu-alt"></i> Detail
														log</a></li>
												<li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
												<li><a href="#"><i class="ti-power-off"></i> Clear
														ist</a></li>
											</ul></li>
										<li class="doc-link"><a href="#"><i class="ti-link"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<div class="user-profile m-t-15">
									
									<div class="row">
										<div class="col-lg-4">
											<div class="user-photo m-b-30"></div>
										</div>
										<div class="col-lg-8" style="width: 100%;">
											<div class="user-profile-name dib">日数据</div>

											<div class="row" style="width: 50%; margin-top: 60px;">
												<div class='col-sm-4'>
													<div class="form-group">
														<div class='input-group date' id='datetimepicker1'>
															<input type='text' class="form-control" />
															<!-- placeholder="开始日期" -->
															<span class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
												</div>
												<div class='col-sm-4'>
													<div class="form-group">
														<div class='input-group date' id='datetimepicker2'>
															<input type='text' class="form-control" />
															<!-- placeholder="结束日期" -->
															<span class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
												</div>

												<div class='col-sm-4'>
													<div class="form-group">
														<div class='input-group date' id='datetimepicker2'>
															<button type="button" class="btn btn-primary"
																style="height: 42px;">搜索</button>
														</div>
													</div>
												</div>
											</div>


											<!-- 导航栏 -->
										<div class="navigation" style="width: 70%; margin: 30px auto;">
										 	<ul class="nav nav-pills nav-justified">
													<!-- <li class='active'><a href="#" class='Info'>信息</a></li>
													<li><a href="#" class='workLoad'>工作量</a></li>
													<li><a href="#" class="smallEx">小优</a></li>
													<li><a href="#" class='workLoad'>工作量</a></li>
													<li><a href="#" class="smallEx">小优</a></li>
													<li><a href="#" class='workLoad'>工作量</a></li>
													<li><a href="#" class="smallEx">小优</a></li>
													<li><a href="#" class="dropdown">工作量</a></li> -->
											</ul> 
										</div>
										
										


											<div class="custom-tab user-profile-tab">
												<ul class="nav nav-tabs" role="tablist">

												</ul>

												<div id="mainDiv" style="margin: 20px auto; width: 900px;">
													   <div  id="main" style="width: 900px;height:300px; "></div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div>
							<p>使用说明:初次展示(刷新页面)展示当前时间跟当前时间前60天的数据。</p>
							<p>若没有图像展示则数据库无数据,若数据有问题请联系数据中心进晓宇，王海成.</p>
						</div>
					</div>

					<%@ include file="../bottom.jsp"%>
				</section>
			</div>
		</div>
	</div>

	<div id="search">
		<button type="button" class="close">×</button>
		<form>
			<input type="search" value="" placeholder="type keyword(s) here" />
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
	</div>
	<!-- jquery vendor -->
	<script src="${basePath}/js/lib/jquery.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/echarts.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/generateT.js"></script>
	<script type="text/javascript" src="${basePath}/js/pieT.js"></script>
	<script src="${basePath}/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="${basePath}/js/lib/menubar/sidebar.js"></script>
	<script src="${basePath}/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->
	<script src="${basePath}/js/lib/bootstrap.min.js"></script>
	<!-- bootstrap -->
	<script src="${basePath}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${basePath}/js/generateT.js"></script>
	<script type="text/javascript" src="${basePath}/js/zh-CN.js"></script>
	<!--  将英文变成汉字 -->
	<script type="text/javascript" src="${basePath}/js/nowDate.js"></script>
	<script type="text/javascript" src="${basePath}/js/datetimePickerMonth.js"></script>
	<script type="text/javascript" src="${basePath}/js/basisDataMonth.js"></script>
</body>
</html>


