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
<link href="${basePath}/css/myCss/table.css" rel="stylesheet">
<!-- 上传 -->
<link rel="stylesheet" href="${basePath}/css/myCss/bootstrap-fileinput.css">

<style type="text/css">
        #progressBar{width: 300px;height: 20px;border: 1px #EEE solid;}
        #progress{width: 0%;height: 20px;background-color: lime;}
</style>


</head>

<body>

	<%@ include file="../left.jsp"%>

	<%@ include file="../top.jsp"%>
	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>基本信息</h1>
							</div>
						</div>
					</div>
					<!-- /# column -->
					<div class="col-lg-4 p-l-0 title-margin-left">
						<div class="page-header">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">基本信息</a></li>
									<li class="active">背景</li>
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
								<h4>背景</h4>

								<div class="card-header-right-icon">
									<ul>
										<li class="card-close" data-dismiss="alert"><i
											class="ti-close"></i></li>
									</ul>
								</div>


							</div>
							<div class="card-body">
								<div class="user-profile m-t-15">
									<div class="row">
										<div class="col-lg-4">
											<div class="user-photo m-b-30">
												<img class="img-responsive" style=" width: 350px; height: 240px; margin-bottom: 50px;" src="image.do" alt="" />
												
											</div>
										</div>
										<div class="col-lg-8">
											<div class="user-profile-name dib">个人信息</div>
											<div class="custom-tab user-profile-tab">
												<ul class="nav nav-tabs" role="tablist">
													<li role="presentation" class="active"><a href="#1"
														aria-controls="1" role="tab" data-toggle="tab">About</a></li>
												</ul>

												<div class="tab-content">
													<div role="tabpanel" class="tab-pane active" id="1">

														<!-- 放个人信息数据 -->
														<div class="contact-information" style=" float: left;"></div>

														<!-- 放上传照片路径 -->
														<div class="form-group" style=" float: left; margin-left: 200px; margin-top:30px;">
															<div class="col-md-8">
																<div class="fileinput fileinput-new" data-provides="fileinput" id="uploadImageDiv">
																	<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
																	<!-- <span style=" color: red;">为了整体页面的美观,请上传 宽:350px; 高: 240px;</span> -->
																		<img src="${companyInfo.image}" alt="" />
																	</div>
																	<div class="fileinput-preview fileinput-exists thumbnail" style="width: 200px; height: 150px;"></div>
																	
																	<!-- 外层div 进度条的整体视觉和位置设置 -->
																	 <div style="width:200px;height: 10px;border: 1px solid #CCC">
                                                                        <!-- 内层div  逐渐递增的进度条 -->
                                                                        <div id="jdt" style="height: 8px"></div>
                                                                     </div>
																	
																	
																	<!-- <div>
																		<form action="upload.do" method="post" enctype="multipart/form-data">
																			<span class="btn default btn-file">   
																			<span class="fileinput-new" style=" cursor: pointer;">选择图片</span> 
																			<span class="fileinput-exists">更改</span> 
																			<input  type="file" name="file" />
																			</span> 
																			<a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">移除</a> 
																			<input class="fileinput-exists" type="submit" id='for-subimt' value='上传'>
																		</form>
																	</div> -->
																	<!-- 新弄 -->
																	<div>
																		<form action=""  enctype="multipart/form-data" id="mainForm">
																			<span class="btn default btn-file">   
																			<span class="fileinput-new" style=" cursor: pointer;">选择图片</span> 
																			<span class="fileinput-exists">更改</span> 
																			<input  type="file" name="file" />
																			</span> 
																			<a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">移除</a> 
																			<input class="fileinput-exists" type="button" id='for-subimt' value='上传'>
																		</form>
																	</div>
																	
																</div>
																<div id="titleImageError" style="color: #a94442"></div>
															</div>
														</div>
	                                                <!-- 放上传照片路径 -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 放表格合同数据-->
							<div id="haha" class="tableType"></div>
						</div>
					</div>
					<!-- /# column -->

				</div>
				<!-- /# row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="footer">
							<p>
								版权所有 <span id="date-time"></span> <a
									href="http://192.168.0.187:8080/WebReport/ReportServer?op=fs_load&cmd=fs_signin"
									class="page-refresh">数据中心</a>
							</p>
						</div>
					</div>
				</div>
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
	<script src="${basePath}/js/backgroundTable.js"></script>
	<script src="${basePath}/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="${basePath}/js/lib/menubar/sidebar.js"></script>
	<script src="${basePath}/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->
	<script src="${basePath}/js/lib/bootstrap.min.js"></script>
	<!-- bootstrap -->
	<!-- 基本信息 -->
	<script type="text/javascript" src="${basePath}/js/backgroundInfo.js"></script>
	<script type="text/javascript" src="${basePath}/js/lib/jquery-ui/jquery-ui.min.js"></script>
	<script src="${basePath}/js/bootstrap-fileinput.js"></script>
	<script type="text/javascript" src="${basePath}/js/jxy/jquery.fileupload.js"></script> 
 
 <!-- 点击提交按钮 -->
 <script type="text/javascript">
  $('#for-subimt').click(function(){
	// 获取表单对象
	  var fm = document.getElementById("mainForm");
	// 实例化FormData对象
	 var fd=new FormData(fm);
	 // 创建XMLHttpRequest对象
     var xhr = new XMLHttpRequest();
     // 调用open方法准备ajax请求
     xhr.open('post','upload.do');
     var jdt = document.getElementById('jdt');
     // 绑定onprogress事件
     xhr.upload.onprogress = function(evt){
         // console.log(evt);
         // toFixed修正结果，只保留小数点后两位
         // 计算上传大小的百分比
         percent = (evt.loaded / evt.total).toFixed(2);
         // 设置进度条样式
         jdt.style.width = percent * 200 + 'px';
         jdt.style.background = 'skyblue';
     }

     xhr.onreadystatechange = function(){
         if(xhr.readyState == 4){
            // alert(xhr.responseText);
            //console.log(xhr.responseText);
        	 window.location.href= 'backGroupIndex.do';
         }
     }
     // 发送ajax请求
     xhr.send(fd);
 
	
  });
 
 </script>
 
 
 
 
 
 <!-- 图片的展示 -->
 <script type="text/javascript">
	         $.ajax({
	             type: "GET",
	             url: "selPhone.do",
	             dataType: "json",
	             success: function(data){
	                   console.log(data);
	                for(var i=0;i<data.length;i++){	                	   
	            	 $('.user-photo').append("<img class='img-responsive' style='width: 350px; height: 240px; margin-bottom: 50px;' src='"+data[i]+"' alt='' />");
	                      }
	            	 
	                      }
	         });
 
 </script>






</body>
</html>


