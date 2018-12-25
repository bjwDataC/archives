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
                                <div class="button-list">
                                    <button type="button" class="btn btn-default btn-rounded m-b-10" 
                                    style="margin-top:6px;" id="1" onclick="clickButtom(this)">
                                    	公司知识</button>
                                    <button type="button" class="btn btn-primary btn-rounded m-b-10 m-l-5" 
                                    style="margin-top:6px;" id="2" onclick="clickButtom(this)">管理知识</button>
                                    <!-- <button type="button" class="btn btn-success btn-rounded m-b-10 m-l-5"
                                    style="margin-top:6px;" id="3" onclick="clickButtom(this)">专业知识</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    <li class="active">Table-Basic</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                
                <!-- /# row -->
                <section id="main-content">
                    <div class="col-lg-12">
                        <div class="card alert">
                            <div class="card-header">
                                <h4 style="font-weight:500;font-size:25px;">新员工入职培训和公司公共课</h4>
                                <div class="card-header-right-icon">
                                    <ul>
                                        <li class="card-close"><i class="ti-close"></i></li>
                                        <li class="card-option drop-menu"><i class="ti-settings" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </li>
                                        <li class="doc-link"><a href="#"><i class="ti-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover ">
                                        <thead>
                                            <!-- <tr>
                                                <th >序号</th>
                                                <th style="width:200px;">类别</th>
                                                <th style="width:200px;">级别</th>
                                                <th style="width:450px;">课程名称</th>
                                                <th>成绩</th>
                                                <th>日期</th>
                                            </tr> -->
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
                <section>        
                    <div class="col-lg-12">
                        <div class="card alert">
                            <div class="card-header">
                                <h4 style="font-weight:500;font-size:25px;">读书心得</h4>
                                <div class="card-header-right-icon">
                                    <ul>
                                        <li class="card-close"><i class="ti-close"></i></li>
                                        <li class="card-option drop-menu"><i class="ti-settings" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </li>
                                        <li class="doc-link"><a href="#"><i class="ti-link"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                        <div id="main-content1"></div>
                        <!-- /# card -->
                    </div>
                </section>
                <section>
                    <!-- /# column -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="footer">
                                <p>This dashboard was generated on <span id="date-time"></span> <a href="#" class="page-refresh">Refresh Dashboard</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- /# row -->
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
    <%@include file="incloudeJS.jsp"%>
    <script>
	    $.ajax({
	       	type : 'get',  //传输类型
	       	url : 'companyData.do?staffCode=15082810&stutas=1',
	       	dataType : 'json', //返回数据形式为json
	       	success : function(result) {
	       		console.log(result)
	       		var score="";
	       		if(result.inductionTrainingList.length!=0){
	       			score=result.inductionTrainingList[0].staffCode
	       		}
	       		var thead="<tr><th >序号</th><th style='width:200px;'>类别</th><th style='width:200px;'>级别</th><th style='width:450px;'>课程名称</th><th>成绩</th><th>日期</th></tr>"
	       		$(".table thead").append(thead)
	       		$(".table tbody").append("<tr><th scope='row'>1</th><td>新员工培训</td><td>公司级</td><td><span class='badge badge-primary'>新员工入职培训</span></td><td class='color-primary'>"+score+"</td><td></td></tr>")
	           	for(var i=0;i<result.companyList.length;i++){
	           		var random = Math.floor(Math.random()*(0-68+1)+68);
                	var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
	           		var tr="<tr>"+
				                "<th scope='row'>"+(i+2)+"</th>"+
				                "<td>"+result.companyList[i].type+"</td>"+
				                "<td>"+result.companyList[i].content+"</td>"+
				                "<td><span class='badge' style='background-color:"+color+";'>"+result.companyList[i].managerReply+"</span></td>"+
				                "<td style='color:"+color+";'>"+result.companyList[i].staffCode+"</td>"+
				                "<td>"+result.companyList[i].time+"</td>"+
				            "</tr>"
					 $("#main-content .table tbody").append(tr)
	           	}
	       		
	       		for(var i=0;i<result.readingFeelingList.length;i++){
	           		var div="<div class='card alert'>"+
				                    "<div class='card-header'>"+
				                        "<h4 style='max-width:500px;'>章节："+result.readingFeelingList[i].managerReply +"</h4><h4 style='float:right;'> "+result.readingFeelingList[i].type+"</h4>"+
				                    "</div>"+
				                    "<div class='card-body'>"+
				                        "<div class='table-responsive'>"+result.readingFeelingList[i].content+"</div>"+
				                    "</div>"+
				                    "<div class='card-body' style='margin-top:15px;'>"+
				                        "<div class='table-responsive'>时间："+result.readingFeelingList[i].time+"</div>"+
				                    "</div>"+
				                "</div>"
					 $("#main-content1").append(div);
	           	} 
	       	} 
		});
	    
	    function clickButtom(e){
	    	var staffCode=null;
	    	var stutas=$(e).attr("id");
	    	$("#main-content1").html("");
	    	$(".table tbody").html("");
	    	$(".table thead").html("");
	    	$("#main-content>.col-lg-12:nth-of-type(2)").html("");
	    	if(stutas=="1"){
       			window.location.reload()
       		}
	    	else{
       			$.ajax({
    		       	type : 'get',  //传输类型
    		       	url : 'management.do?staffCode=15082810&stutas='+stutas,
    		       	dataType : 'json', //返回数据形式为json
    		       	success : function(result) {
    		       		console.log(result)
    		       		var table="<div class='card alert'><table class='table table-hover'><thead></thead><tbody></tbody></table></div>"
    		       		$("#main-content1").append(table)
    		       		var thead1="<tr><th >序号</th><th style='width:200px;'>目前职称</th><th style='width:200px;'>申请职称 </th><th style='width:450px;'>目前职称启用时间</th><th>申请职称启用时间</th><th>答辩时间</th></tr>"
						var thead="<tr><th >序号</th><th style='width:200px;'>班级</th><th style='width:200px;'>期数 </th><th style='width:450px;'>成绩</th><th>排名</th><th>年份</th></tr>"
						$("#main-content .table thead").append(thead)
   			       		$("#main-content1 .table thead").append(thead1)
   			       		$("#main-content h4").html("管理干部储备池")
   			       		$("section:nth-of-type(2) h4").html("任职资格答辩")
   			           	for(var i=0;i<result.management.length;i++){
   		                	var score=result.management[i].score.substring(0,result.management[i].score.indexOf("."))
   		                	console.log(score)
   			           		var tr="<tr>"+
   						                "<th scope='row'>"+(i+1)+"</th>"+
   						                "<td>"+result.management[i].classGrade+"</td>"+
   						                "<td>"+result.management[i].periods+"</td>"+
   						                "<td><span class='badge'>"+score+"</span></td>"+
   						                "<td>"+result.management[i].ranking+"</td>"+
   						                "<td>"+result.management[i].year+"</td>"+
   						            "</tr>"
   							 $("#main-content .table tbody").append(tr)
   			           	}
   			       		
   			       		for(var i=0;i<result.qualification.length;i++){
   			       		var tr="<tr>"+
				                "<th scope='row'>"+(i+1)+"</th>"+
					                "<td>"+result.qualification[i].nowPosition+"</td>"+
					                "<td>"+result.qualification[i].aplayForPosition+"</td>"+
					                "<td><span class='badge'>"+result.qualification[i].nowStartTime+"</span></td>"+
					                "<td>"+result.qualification[i].aplayForStartTime+"</td>"+
					                "<td>"+result.qualification[i].date+"</td>"+
					            "</tr>"
						 $("#main-content1  .table tbody").append(tr)
   			           	} 
    		       	} 
    			});
       			 
       		}
	    	
	    }
    
    
    </script>

</body>

</html>