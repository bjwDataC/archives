<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%@include file="incloudCSS.jsp"%>
</head>
<body class="sidebar-hide">
	 <%@ include file="left.jsp" %>


       <%@ include file="top.jsp" %>
   
    <!-- /# sidebar -->

    
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
               <section id="main-content">
                <div class="main-content">
                    <div class="row" id="row-content">
                            <!-- <div class="card p-0 col-lg-6">
                                <div class="stat-widget-three home-widget-three">
                                    <div class="stat-icon bg-facebook">
                                        <i class="ti-facebook"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="stat-digit">8,268</div>
                                        <div class="stat-text">Likes</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card p-0 col-lg-6">
                                <div class="stat-widget-three home-widget-three">
                                    <div class="stat-icon bg-facebook">
                                        <i class="ti-facebook"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="stat-digit">8,268</div>
                                        <div class="stat-text">Likes</div>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="card p-0">
                                <div class="stat-widget-three home-widget-three">
                                    <div class="stat-icon bg-youtube">
                                        <i class="ti-youtube"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="stat-digit">12,545</div>
                                        <div class="stat-text">Subscribes</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card p-0">
                                <div class="stat-widget-three home-widget-three">
                                    <div class="stat-icon bg-twitter">
                                        <i class="ti-twitter"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="stat-digit">7,982</div>
                                        <div class="stat-text">Tweets</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card p-0">
                                <div class="stat-widget-three home-widget-three">
                                    <div class="stat-icon bg-danger">
                                        <i class="ti-linkedin"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="stat-digit">9,658</div>
                                        <div class="stat-text">Followers</div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer">
                            <p>This dashboard was generated on <span id="date-time"></span> <a href="#" class="page-refresh">Refresh Dashboard</a></p>
                        </div>
                    </div>
                </div>
                </section>
                <!-- /# main content -->
            </div>
            <!-- /# container-fluid -->
        </div>
        <!-- /# main -->
    </div>
    <!-- /# content wrap -->

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
    $.ajax({
       	type : 'get',  //传输类型
       	url : 'teamData.do?staffCode=11011201&date=2018',
       	dataType : 'json', //返回数据形式为json
       	success : function(result) {
           	console.log(result)
           	for(var i=0;i<result.length;i++){
           		var div="<div class='card p-0 col-lg-12''>"+
			                "<div class='stat-widget-three home-widget-three'>"+
				                "<div class='stat-icon bg-facebook'>"+
				                    "<i class='ti-facebook'></i>"+
				                "</div>"+
				                "<div class='stat-content'>"+
				                   " <div class='stat-digit'>类型:"+result[i].type+"</div>"+
				                    "<div class='stat-text' style='padding:0 20px;;'>内容:"+result[i].content+"<span style='display:inline-block;float:right;'>时间："+result[i].time+"</span></div>"+
				                "</div>"+
				            "</div>"+
				        "</div>"
				 $("#row-content").append(div)
           	}
       	} 
	});
    	
    
    </script>

</body>

</html>