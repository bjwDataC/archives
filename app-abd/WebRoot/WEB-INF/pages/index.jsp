<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<%@include file="incloudCSS.jsp"%>
</head>
<body class="sidebar-hide">

    <%@ include file="left.jsp" %>
    <%@ include file="top.jsp" %>
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Hello, <span>${sessionScope.userUser.staffName }</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">${sessionScope.userUser.division }</a></li>
                                    <li class="active">${sessionScope.userUser.department }</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row" id="monthData1">
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"></span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"></span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"></span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"> </span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row"  id="monthData2">
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"></span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"> </span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"> </span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left"></div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <span class="stat-digit"> </span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats"></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- row -->
                    
                    
                    
                    
                    
                  
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                            
                                <div class="col-lg-6">
                                    <div class="card alert">
                                        <div class="card-header">
                                            <h4 class="m-l-5">荣誉墙 </h4>
                                            <div class="card-header-right-icon">
                                                <ul>
                                                    <li><i class="ti-reload"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="media-stats-content text-center">
                                                <div class="row">
                                                    <div class="col-lg-4 border-left">
                                                        <div class="stats-content">
                                                            <img class="stats-digit" src="${basePath}/images/avatar/metal-gold-blue.png"/>
                                                            <div class="stats-text">奋斗者</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 border-left">
                                                        <div class="stats-content">
                                                            <img class="stats-digit" src="${basePath}/images/avatar/faves.png"/>
                                                            <div class="stats-text">杰出教育工作者</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6">
                                    <div class="card alert">
                                       <div class="card-body"  id="echChart" style="width: 700px; height: 275px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="row">
                                <div class="col-lg-6">
		                            <div class="card">
		                                <div class="card-header">
		                                    <h3 style="font-weight:bold;letter-spacing:15px;margin-top:10px;margin-bottom:30px;text-align:center;">辅导记录</h3>
		                                    
		                                </div>
		                                <div class="recent-comment m-t-15">
		                                </div>
		                            </div>
		                            <!-- /# card -->
		                        </div>
                                <div class="col-lg-6">
		                            <div class="card alert">
		                                <div class="card-header">
		                                    <h3 style="font-weight:bolder;letter-spacing:15px;margin-top:10px;text-align:center;">里程碑</h3>
		                                </div>
		                                <div class="card-body">
		                                    <ul class="timeline">
		                                        
		                                    </ul>
		                                </div>
		                            </div>
		                            <!-- /# card -->
		                        </div>
                            </div>
                 
                    
                  <%@ include file="bottom.jsp" %>
                </section>
            </div>
        </div>
    </div>

    <div id="search">
        <button type="button" class="close">Ã</button>
        <form>
            <input type="search" value="" placeholder="type keyword(s) here" />
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>
    <%@include file="incloudeJS.jsp"%>
  
  <script>
    	
    	$(document).ready(function() {
    		//里程碑
	        $.ajax({
	           	type : 'get',  //传输类型
	           	url : 'education.do?date=',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	               	console.log(result)
	               	if(result.list.length==0){
	               		$(".timeline").append("<div style='height:200px;text-align:center;line-height:200px;font-size:30px;'>暂无数据</div>")
	               	}
	                for(var i=0;i<result.list.length;i++){
	                	var random = Math.floor(Math.random()*(0-68+1)+68);
	                	var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
	                	var li="<li>"+
				                    "<div class='timeline-badge' style='background-color:"+color+";'>"+
				                    	"<i class='fa fa-"+icon[random]+"'></i>"+
				                    "</div>"+
				                    "<div class='timeline-panel'>"+
				                    	"<div class='timeline-heading'>"+
				                            "<h4 class='timeline-title' style='font-weight:bold;'>"+result.list[i].incident+"</h4>"+
				                        "</div>"+
				                        "<div class='timeline-heading'>"+
				                            "<h5 class='timeline-title'>"+result.list[i].inspiration+"</h5>"+
				                        "</div>"+
				                        "<div class='timeline-body'>"+
				                            "<p style='text-align:right;'>"+result.list[i].time+"</p>"+
				                        "</div>"+
				                    "</div>"+
				                "</li>";
	                	$(".timeline").append(li)
	                }
	           	} 
			});
    		
    		
    		//辅导记录
    		$.ajax({
	           	type : 'get',  //传输类型
	           	url : 'coachingRecord.do?&date=',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	           		console.log(result)
	           		console.log("辅导记录")
	               	if(result.length==0){
	               		$(".recent-comment").append("<div style='height:200px;text-align:center;line-height:200px;font-size:30px;'>暂无数据</div>")
	               	}
	                for(var i=0;i<result.length;i++){
	                	console.log("辅导记录")
						/* if(result[i].type=="心得感悟"){ */
							var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
		                	var li="<div class='media'>"+
				                        "<div class='media-left'>"+
					                       "<a href='#'>"+
					                        	"<img class='media-object' src='${basePath}/images/avatar/1.jpg' alt='...'>"+
					                       "</a>"+
					                    "</div>"+
					                    "<div class='media-body'>"+
					                        "<h4 class='media-heading color-primar'>"+"<text style='color:"+color+";font-weight:bold;'>"+result[i].type+"</text>"+"："+result[i].content+"</h4>"+
					                        "<p>"+"<text style='font-weight:bold;font-size:18px;'>经理回复：</text>"+result[i].managerReply+"</p>"+
					                        "<p class='comment-dat'>"+result[i].time+"</p>"+
					                    "</div>"+
			                		"</div>";
		                	$(".recent-comment").append(li)
						
	                	
	                }
	           	} 
			});
    		//多维度月数据部分内容
    		$.ajax({
	           	type : 'get',  //传输类型
	           	url : 'monthData.do?date=2018-12-01',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	               	console.log(result)
	               	for(var i=0;i<result[0].length;i++){
	               		console.log($("#monthData .col-lg-3 .header-title").html());
	               		if(i<4){
	               			if(result[0][i].type_count>=result[1][i].type_count){
	               				$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .pull-left").prepend("<i class='ti-arrow-up color-success'></i>")
                                
	               			}else{
	               				$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .pull-left").prepend("<i class='ti-arrow-down color-danger'></i>")
	               				//$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .stat-content .pull-right").prepend("<i class='ti-arrow-down color-danger'></i>")
	               			}
	               			if(result[0][i].ranking<=result[1][i].ranking){
	               				$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .stat-content .pull-right").prepend("<i class='ti-arrow-up color-success'></i>")
                                
	               			}else{
	               				$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .stat-content .pull-right").prepend("<i class='ti-arrow-down color-danger'></i>")
	               			}
	               			$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .header-title").html(result[0][i].sta_type);
	               			$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .stat-digit").html(result[0][i].type_count);
	               			$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .progress-stats").html("排名:"+result[0][i].ranking);
	               			
	               		}else{
	               			if(result[0][i].type_count>=result[1][i].type_count){
	               				$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .pull-left").prepend("<i class='ti-arrow-up color-success'></i>")
                                
	               			}else{
	               				$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .pull-left").prepend("<i class='ti-arrow-down color-danger'></i>")
	               				//$("#monthData1 .col-lg-3:nth-of-type("+(i+1)+") .stat-content .pull-right").prepend("<i class='ti-arrow-down color-danger'></i>")
	               			}
	               			if(result[0][i].ranking<=result[1][i].ranking){
	               				$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .stat-content .pull-right").prepend("<i class='ti-arrow-up color-success'></i>")
                                
	               			}else{
	               				$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .stat-content .pull-right").prepend("<i class='ti-arrow-down color-danger'></i>")
	               			}
	               			$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .header-title").html(result[0][i].sta_type);
	               			$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .stat-digit").html(result[0][i].type_count);
	               			$("#monthData2 .col-lg-3:nth-of-type("+(i+1-4)+") .progress-stats").html("排名:"+result[0][i].ranking);
	               		}
    					
	               	} 
	           	} 
			});
    		
    		
    		//荣誉墙
    		$.ajax({
	           	type : 'get',  //传输类型
	           	url : 'honor.do',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	               	console.log(result);
	               	console.log("荣誉墙");
	               	var classStr="border-bottom";
	               	var image="";
	               	for(var i=0;i<result.length;i++){
	               		if(i==0){
	               			image="red_flower"
	               		}else if(i==1){
	               			image="christmas_2015-48"
	               		}
	               		else if(i==2){
	               			image="badge"
	               		}
	               		else if(i==3){
	               			image="thememanager"
	               		}
	               		if(i==0){
	               			classStr=""
	               		}else{
	               			classStr="border-bottom"
	               		}
	               		var div="<div class='col-lg-4 "+classStr+"'>"+
			               		"<div class='stats-content'>"+
			               		"<img class='stats-digit' src='${basePath}/images/avatar/"+image+".png'/><div class='stats-text'>"+result[i].sta_type+"<span style='font-weight:bolder;color:red;'>("+result[i].ranking+"个)</span>"+"</div>"+
			               		"</div>"+
			               		"</div>";
			            $(".media-stats-content .row").prepend(div);
	               	}
	           	} 
			});
    		
    		
    		
    		
	    });
    	
    
    	
    	
    </script>
  
  
</body>
</html>