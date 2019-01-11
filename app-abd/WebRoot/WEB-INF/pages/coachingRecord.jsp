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
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Hello, <span>Welcome Here</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <div class="card-header-right-icon" style="margin-top: 10px;">
									<ul>
										<li id="4" onclick="clickButtom()">
											<button type="button" class="btn btn-default m-b-10"
												style="height: 30px; line-height: 10px;">搜索</button>
										</li>
										<!-- <li id="months"
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
										</li> -->
										<li id="years"
											style="border: 1px solid #e7e7e7; z-index: 9999 !Important; min-height: 30px; min-width: 98px; margin: 0; padding: 0; position: absolute; right: 200px; overflow: hidden;"
											onmouseleave="yearlist()" onmouseover="listyear()"><span
											style="display: inline-block; padding-left: 15px;"></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-angle-down"
											style="line-height: 30px;"></i>
											<div id="listyear" hidden></div>
										</li>
									</ul>
								</div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->

                <div class="main-content">
                    
                </div>
                <!-- /# main content -->
            </div>
            <!-- /# container-fluid -->
        </div>
        <!-- /# main -->
    </div>

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
	    function clickButtom(){
	    	var date=$("#years span").html()
	    	$(".main-content").html("");
	    	$.ajax({
		       	type : 'get',  //传输类型
		       	url : 'coachingRecord.do?date='+date,
		       	dataType : 'json', //返回数据形式为json
		       	success : function(result) {
		           	console.log(result)
		           	for(var i=0;i<result.length;i++){
		           		console.log("==========")
		           		var div="<div class='row'>"+
					                "<div class='col-lg-12'>"+
					                "<div class='card alert'>"+
					                    "<div class='product-2-details'>"+
					                        "<table class='table'>"+
					                            "<tbody>"+
					                                "<tr>"+
					                                    "<td>"+
					                                        "<div class='product-2-img'>"+
					                                            "<img src='assets/images/product_1/download.jpg' alt='' />"+
					                                        "</div>"+
					                                    "</td>"+
					                                    "<td style='width:1150px;'>"+
					                                        "<div class='product-2-des'>"+
					                                            "<div class='product_name'>"+
					                                                "<h4><text style='color:green;font-size:20px;'>内容：</text>"+result[i].content+"</h4>"+
					                                            "</div>"+
					                                            "<div class='product_des'>"+
					                                                "<p><text style='color:green;font-size:20px;'>经理回复：</text>"+result[i].managerReply+"</p>"+
					                                            "</div>"+
					                                        "</div>"+
					                                    "</td>"+
					                                    "<td>"+
					                                        "<div class='product-2-button'>"+
					                                            "<div class='prdt_add_to_cart'>"+
					                                                "<button type='button' class='btn btn-danger btn-lg btn-rounded m-b-10 m-l-5'>"+result[i].type+"</button>"+
					                                                "<button type='button' class='btn btn-primary btn-lg btn-rounded m-b-10 m-l-5'>"+result[i].time+"</button>"+
					                                            "</div>"+
					                                        "</div>"+
					                                    "</td>"+
					                                "</tr>"+
					                            "</tbody>"+
					                        "</table>"+
					                    "</div>"+
					                "</div>"+
					            "</div>"+
					        "</div>"
						 $(".main-content").append(div)
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
					var month = myDate.getMonth() + 1
					if (month < 10) {
						month = "0" + month
					}
					$("#months span").html(month);
					$("#years span").html(myDate.getFullYear())
					clickButtom("")
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