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
										
									</ul>
								</div>
							</div>
						</div>
					</div>
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
					</div>
				</section>
				<!-- 读书心得 -->
				<section id="readingFeeling" hidden>
					<div class="col-lg-12">
						<div class='col-lg-2'>
							
						</div>
						<div id="main-content1" class='col-lg-8' style="border-left:2px solid #CCCCCC;margin-left:255px;"></div>
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
					</div>
				</section>
				<%@ include file="bottom.jsp" %>
			</div>
		</div>
	</div>

	<div id="stutas" hidden></div>
	<!-- jquery vendor -->
	<%@include file="incloudeJS.jsp"%>
	<script type="text/javascript" src="${basePath}/js/companyKnowledge.js"></script>

</body>

</html>