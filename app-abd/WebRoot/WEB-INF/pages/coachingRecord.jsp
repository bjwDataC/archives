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
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    <li class="active">Home</li>
                                </ol>
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
    $.ajax({
       	type : 'get',  //传输类型
       	url : 'coachingRecord.do?staffCode=11011201&date=2018',
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
    	
    
    </script>

</body>

</html>