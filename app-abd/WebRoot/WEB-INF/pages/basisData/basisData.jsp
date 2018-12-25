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
<link href="${basePath}/css/myCss/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="${basePath}/css/myCss/loading.css" rel="stylesheet">
 <SCRIPT language=javascript>
function closeDiv()
{
document.getElementById('loading').style.visibility='hidden';
}
function openDiv(){
	document.getElementById('loading').style.visibility='display';
}
</SCRIPT> 


</head>

<body>

    <%@ include file="../loading.jsp" %>

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
															<input type='text' class="form-control"
																 /> <span class="input-group-addon">
																<span class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
												</div>
												<div class='col-sm-4'>
													<div class="form-group">
														<div class='input-group date' id='datetimepicker2'>
															<input type='text' class="form-control"
																 /> <span class="input-group-addon">
																<span class="glyphicon glyphicon-calendar"></span>
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
													<li class='active'><a href="#" class='Info'>信息</a></li>
													<li><a href="#" class='workLoad'>工作量</a></li>
													<li><a href="#" class="signing">签约</a></li>
													<li><a href="#" class="testContract">考试合同</a></li>
													<li><a href="#" class="smallEx">小优</a></li>
												</ul>
											</div>


											<div class="custom-tab user-profile-tab">
												<ul class="nav nav-tabs" role="tablist">
													
												</ul>

												<div style="margin-left: 10px; margin-top: 40px;">
															<div class="contact-information" style="float: left; margin: 2px ;"> 
																<div  id="mainhah" style="width: 600px;height:300px; "></div>
																<div  id="youxiao" style="width: 600px;height:300px; "></div>
															 </div> 
															 
															 <div class="contact-information" style="float: left; margin: 2px ;">
															 	<div  id="clockIn" style="width: 600px;height:300px; "></div>
																<div  id="huangtiao" style="width: 600px;height:300px;"></div>
															 </div>
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
	<script type="text/javascript" src="${basePath}/js/zh-CN.js"></script>     <!--  将英文变成汉字 -->



	<script type="text/javascript">
		var picker1 = $('#datetimepicker1').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0,
		//pickerPosition:'buttom-right'//日期插件弹出的位置
		});

		var picker2 = $('#datetimepicker2').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0,
		//pickerPosition:'buttom-right'//日期插件弹出的位置
		});

	/* 	 	$(function () {
		    var picker1 = $('#datetimepicker1').datetimepicker({
		        format: 'YYYY-MM-DD',
		
		minDate: '2016-7-1'
		    });
		    var picker2 = $('#datetimepicker2').datetimepicker({
		        format: 'YYYY-MM-DD',
		
		    });
		//动态设置最小值
		    picker1.on('dp.change', function (e) {
		        picker2.data('DateTimePicker').minDate(e.date);
		   });
		//动态设置最大值
		    picker2.on('dp.change', function (e) {
		        picker1.data('DateTimePicker').maxDate(e.date);
		    });
		});  */
		
		var beginData="";  //定义开始时间
		var endData="";    //定义结束时间
		var reqUrl="";     //定义请求
		
		
		//初始化页面 
		initDayDate();
		
		
		
		
		//刷新页面或者初始化页面函数 
		function initDayDate(){
			//往时间日历中添加数据
			//placeholder="选择结束时间"
			 reqUrl="date/Info.do";
			
			  beginData=nowDate(400); 
			$('#datetimepicker1 .form-control').attr("placeholder",beginData);
			
			  endData=nowDate(0);
			$('#datetimepicker2 .form-control').attr("placeholder",endData);
			
			callDayDate(reqUrl,beginData ,endData)	
		}
		
		
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
		
	    //当点击搜索按钮时 
			$(".btn-primary").click(function() {
				openDiv();
				beginData = $('#datetimepicker1 .form-control').val();
				endData = $('#datetimepicker2 .form-control').val();
		
				if (beginData == '' || endData == '') {
					alert("请输入开始时间或者结束时间");
				}
				if(endData<=beginData){
					alert("Error:  结束时间小于开始时间");
				}
				callDayDate(reqUrl,beginData ,endData);
			});
		
	    
			//点击档案栏
			 var navUl=$('.navigation ul');
			navUl.on('click','li',function(){
				var pageIndex=$(this).index();
				$('.navigation li').removeClass();
				$(this).attr("class","active");
				var navName=$(this).find('a').attr("class");
			      reqUrl="date/"+navName+".do";
			      callDayDate(reqUrl,beginData ,endData);
			}); 
	    
	    
	    
		
		
		
		//调用日数据 
		function callDayDate(reqUrl,beginData ,endData){
			 console.log("========callDayDate==========");
			 console.log("reqUrl"+reqUrl+"beginData"+beginData+"endData"+endData);
			 $.ajax({
	             type: "POST",
	             url: reqUrl,
	             data: {beginData:beginData, endData:endData},
	             dataType: "json",
	             success: function(data){
	            	 console.log(data);
	            	 closeDiv();
	            	 if(reqUrl=="date/smallEx.do"){
	            		  var obj={};
	            		 obj.text="小优";
			             obj.data=["小优"];
		            	 obj.xAxisData=[];
		            	 obj.seriesData=[];
		            	 var smallEx=[]; 
	            		 for(var i=0;i<data.length;i++){
	            			 obj.xAxisData.push(data[i].smallDate);
	            			 smallEx.push(data[i].samllCount); 
	            		 }
	            		 console.log(smallEx);
	            		 obj.seriesData.push(smallEx);
            			 console.log(obj); 
	            		 
	            		 var main= document.getElementById('mainhah');
	                     echarts.init(main).setOption(optionData (obj));  
	            	 }
	            	// console.log(data.smallExcellent);
	            	  //新增信息 
	            	  if(reqUrl="date/Info.do"){
	            		  if(data.infoa.infoDate.length>0||data.infoa.infoCount.length>0){
	 	            		 console.log("========infoDate==========");
	 	            		 var obj={};
	 		            	 obj.text="新增信息";
	 		            	 obj.data=["新增信息"];
	 		            	 obj.xAxisData=data.infoa.infoDate;
	 		            	 obj.seriesData=[];
	 		            	 obj.seriesData.push(data.infoa.infoCount);
	 		            	 var main= document.getElementById('mainhah');
	 	                     echarts.init(main).setOption(optionData (obj)); 
	 	            	 }
	 	            	 
	 	            	 console.log(data.effectives.length);
	 	            	 if(data.effectives.effectiveDate.length>0||data.effectives.effectiveCount.length>0){
	 	            		 console.log("===========effectives===============");
	 	            		 var obj={};
	 		            	 obj.text="有效信息";
	 		            	 obj.data=["有效信息"];
	 		            	 obj.xAxisData=data.effectives.effectiveDate;
	 		            	 obj.seriesData=[];
	 		            	 obj.seriesData.push(data.effectives.effectiveCount);
	 		            	 var main= document.getElementById('youxiao');
	 	                     echarts.init(main).setOption(optionData (obj)); 
	 	            	 }
	 	            	 
	 	            	 if(data.huangtiaos.huangtiaoDate.length>0||data.huangtiaos.huangtiaoCount.length>0){
	 	            		 console.log("===========huangtiaos===============");
	 	            		 var obj={};
	 		            	 obj.text="黄条(减免前)";
	 		            	 obj.data=["黄条"];
	 		            	 obj.xAxisData=data.huangtiaos.huangtiaoDate;
	 		            	 obj.seriesData=[];
	 		            	 obj.seriesData.push(data.huangtiaos.huangtiaoCount);
	 		            	 var main= document.getElementById('huangtiao');
	 	                     echarts.init(main).setOption(optionData (obj)); 
	 	            	 }   
	 	            	 if(data.fails.failDateList.length>0||data.fails.failCountList.length>0){
	 	            		 console.log("===========clockIn===============");
	 	            		 var obj={};
	 		            	 obj.text="打失败数";
	 		            	 obj.data=["打失败数"];
	 		            	 obj.xAxisData=data.fails.failDateList;
	 		            	 obj.seriesData=[];
	 		            	 obj.seriesData.push(data.fails.failCountList);
	 		            	 var main= document.getElementById('clockIn');
	 	                     echarts.init(main).setOption(optionData (obj)); 
	 	            	 } 
	            		  
	            	  }
	            
	                    }
	         });
		}
		
		
		

		
		
		
		
		
		
	</script>














</body>
</html>


