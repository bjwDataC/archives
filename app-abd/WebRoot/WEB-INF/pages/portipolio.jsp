<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<%@include file="incloudCSS.jsp"%>
    <%-- <link rel="stylesheet" type="text/css" href="${basePath}/css/style1.css"> --%>
</head>
<body class="sidebar-hide">
 	<%@ include file="left.jsp" %>
    <%@ include file="top.jsp" %>
    <div class="content-wrap">
    	<%-- <img src="${basePath}/images/avatar/京瓷哲学.jpg" style="position:fixed;z-index:9999;width:30px;height:30px;left:770px;top:330px;"> --%>	
    	<div id="video" hidden style="overflow:hidden;border:1px solid red;position:fixed;z-index:9998;left:500px;top:300px;">
    	</div>
        <div class="main">
            <div class="container-fluid">
        		<section id="main-content">
	                <div class="row">
	                    <div class="col-lg-12">
	                        <div class="card alert">
	                            <div class="button-list">
	                                <button type="button" class="btn btn-default m-b-10" onclick="getJson(this)" id="0">小红花</button>
	                                <button type="button" class="btn btn-primary m-b-10 m-l-5" onclick="getJson(this)" id="1">单项奖个数</button>
	                                <button type="button" class="btn btn-success m-b-10 m-l-5" onclick="getJson(this)" id="2">单项奖积分</button>
	                                <button type="button" class="btn btn-info m-b-10 m-l-5" onclick="getJson(this)" id="3">优质服务积分</button>
	                                <button type="button" class="btn btn-warning m-b-10 m-l-5" onclick="getJson(this)" id="4">优质服务奖金</button>
	                                <button type="button" class="btn btn-danger m-b-10 m-l-5" onclick="getJson(this)" id="5">小优个数</button>
	                                <button type="button" class="btn btn-pink m-b-10 m-l-5" onclick="milestone(this)" id="6">里程碑</button>
	                                <div class="card-header-right-icon" >
	                                    <ul hidden>
	                                        <li id="8">
	                                        	<button type="button" class="btn btn-default m-b-10" style="height:33px;line-height:10px;" onclick="milestone(this)">搜索</button>
	                                        </li>
	                                        <li id="months" style="border:1px solid #e7e7e7;z-index:9999 !Important;min-height:30px;min-width:98px;margin:0;padding:0;position:absolute;right:100px;overflow:hidden;" onmouseleave="monthlist()" onmouseover="listmonth()">
	                                        	<span style="display:inline-block;padding-left:15px;margin-right:15px;"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down" style="line-height:30px;"></i>
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
	                                        <li id="years" style="border:1px solid #e7e7e7;z-index:9999 !Important;min-height:30px;min-width:98px;margin:0;padding:0;position:absolute;right:200px;overflow:hidden;" onmouseleave="yearlist()"  onmouseover="listyear()">
	                                        	<span style="display:inline-block;padding-left:15px;"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down" style="line-height:30px;"></i>
	                                        	<div id="listyear" hidden>
	                                     
	                       						</div>
	                                        </li>
	                                        <li id="li9">
	                                        	<button type="button" class="btn btn-default m-b-10" style="height:33px;line-height:10px;margin-right:220px;" onclick="milestone(this)">全部</button>
	                                        </li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="main-content" id="achievement">
	                    <div class="row">
	                        <div class="col-lg-12">
	                        	<div class="card alert">
	                             <div class="col-lg-8-offset-1" id="container" style="height: 500px;"></div>
	                             </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="main-content" id="milestone" hidden>
	                    <div class="row">
	                        <div class="col-lg-12">
	                        	<div class="card alert">
		                            <section class="blog-single">
								        <div class="container">
								            <div style='text-align:center;margin-left:15px;'><button type="button" class="btn btn-warning m-b-10 m-l-5" style='font-size:25px;margin-right:30px;letter-spacing:20px;padding-left:30px;'  id="0">里程碑</button></div>
								            <div class="education-main">
								                <div class="container">
								                   <div class="row" style="margin-right:30px;">
								                       <div class="col-md-6  left-grid">
								                            <ul class="left-items col-md-12">
								                        		
								                    		</ul>
								                       </div>
								                       <div class="col-md-6">
								                            <ul class="right-items col-md-12" >
								                            	
								                    		</ul>
								                       </div>
								                   </div>
								                </div>
						                       	<div class="null" style='text-align:center;font-size:30px ;'>无数据</div>
								            </div>
								        </div>
							    	</section>										
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <%@ include file="bottom.jsp" %>
		        </section>
            </div>
        </div>
    </div>
    <!-- jquery vendor --><script type="text/javascript" src="${basePath}/js/jquery.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts.js"></script>
    <script type="text/javascript" src="${basePath}/js/portipolio.js"></script>
    <%@include file="incloudeJS.jsp"%>
    <script type="text/javascript" src="${basePath}/js/portipolios.js"></script>
    <script>
    	$(".lm").mouseover(function(){
    		$(".lm").hide();
    	});
    	//小红花等信息
    	$(document).ready(function(){
    		var year = ${years};  //2016,2017
	    	var redFlower = ${redFlower}; 
	    	var color=["#1de9b6","#03a9f5","#a389d5"]
	    	option.legend.data.splice(0,option.legend.data.length);
	    	option.series.splice(0,option.series.length);
	    	for(var i=0;i<year.length;i++){
	    		option.legend.data[i]=year[i].year+"年";
	    		option.series.push({"name":year[i].year+"年","type":"bar","data":[],"itemStyle":{"normal":{"color":color[i],"label":{"show": true,"position":"top"}}}});
	    		for(var j=0;j<redFlower[i].length;j++){
					option.series[i].data.push(parseInt(redFlower[i][j].itegral));
	    		}
	    	}; 
	    	if (option && typeof option === "object") {
			    myChart.setOption(option, true);
			}
		});
    </script>
    

</body>

</html>