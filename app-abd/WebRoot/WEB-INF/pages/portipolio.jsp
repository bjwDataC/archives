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
   
    <!-- /# sidebar -->

    
    <div class="content-wrap">
    
        <div class="main">
            <div class="container-fluid">
            
        		<section id="main-content">
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
                </div>
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
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                </div>
                <!-- /# row -->

                <div class="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                        	<div class="card alert">
                             <div class="col-lg-8-offset-1" id="container" style="height: 500px;"></div>
                             </div>
                        </div>
                    </div>
                </div>
                
                <div class="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                        	<div class="card alert">
	                            <section class="blog-single">
							        <div class="container">
							            <div style='text-align:center;margin-left:15px;'><button type="button" class="btn btn-warning m-b-10 m-l-5" style='font-size:25px;letter-spacing:20px;padding-left:30px;' onclick="getJson(this)" id="0">里程碑</button></div>
							            <div class="education-main">
							                <div class="container">
							                   <div class="row">
							                       <div class="col-md-6  left-grid">
							                            <ul class="left-items">
							                        		<li>
							                        			<div style='border:5px solid #eef1f6;'>
												            	<h3>incident+</h3>
												            	<div style="font-family:楷体;font-size:18px;">inspiration</div>
												            	<h4>time+</h4>
												            	</div>
												            	<span></span>
												        	</li>
												        	<li>
												            	<div style='border:5px solid #eef1f6;'>
												            	<h3>incident+</h3>
												            	<div style="font-family:楷体;font-size:18px;">inspiration</div>
												            	<h4>time+</h4>
												            	</div>
												            	<span></span>
												        	</li>
							                    		</ul>
							                       </div>
							                       <div class="col-md-6">
							                            <ul class="right-items" >
							                            	<li>
												            	<div style='border:5px solid #eef1f6;'>
												            	<h3>incident+</h3>
												            	<div style="font-family:楷体;font-size:18px;">inspiration</div>
												            	<h4>time+</h4>
												            	</div>
												            	<span></span>
												        	</li>
												        	<li>
												            	<div style='border:5px solid #eef1f6;'>
												            	<h3>incident+</h3>
												            	<div style="font-family:楷体;font-size:18px;">inspiration</div>
												            	<h4>time+</h4>
												            	</div>
												            	<span></span>
												        	</li>
							                            	
							                    		</ul>
							                       </div>
							                   </div>
							                </div>
							            </div>
							        </div>
						    	</section>										
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
			        <div class="col-lg-12">
			            <div class="footer">
			                <p>This dashboard was generated on <span id="date-time"></span> <a href="#" class="page-refresh">Refresh Dashboard</a></p>
			            </div>
			        </div>
			    </div>
		        </section>
            </div>
            
        </div>
        
    </div>
    <!-- jquery vendor --><script type="text/javascript" src="${basePath}/js/jquery.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts.js"></script>
    <script type="text/javascript" src="${basePath}/js/portipolio.js"></script>
    <%@include file="incloudeJS.jsp"%>
    <script>
    
    //里程碑
    $.ajax({
		  url: "education.do?staffCode=18060404",
		  type: "GET",
		  dataType:"json",
		  success: function(result){
  			console.log(result);
  			$(".left-items").html("");
     	    $(".right-items").html("");
     	    var s;
            var list=result.list;
            var color=["#1de9b6","#03a9f5","#dd4b39","#f39c12"]
           	for(var i=0;i<list.length;i++){
          		s="<li>"+
          			"<div style='border:5px solid #eef1f6;background-color:	#F5F5F5'>"+
	                   	"<h3>"+list[i].incident+"</h3>"
	                   	+"<div style='font-family:楷体;font-size:18px;'>"+list[i].inspiration+"</div>"
	                   	+"<h4>"+list[i].time+"</h4>"
                   	+"</div>"
                   	+"<span>"+"</span>"
               	+"</li>";
               	
       			if(i%2==0){
       				$(".left-items").append(s);
               	}else{
               		$(".right-items").append(s);
               	};
        		}; 
		  }
	});
    	
    	$(".lm").mouseover(function(){
    		$(".lm").hide();
    	});
    	//小红花等信息
    	$(document).ready(function(){
    		var year = ${years};  //2016,2017
	    	var redFlower = ${redFlower}; 
	    	var color=["#1de9b6","#03a9f5","#a389d5"]
	    	/* console.log(redFlower); */
	    	option.legend.data.splice(0,option.legend.data.length);
	    	option.series.splice(0,option.series.length);
	    	for(var i=0;i<year.length;i++){
	    		option.legend.data[i]=year[i].year+"年";
	    		option.series.push
	    		({"name":year[i].year+"年","type":"bar","data":[],"itemStyle":{"normal":{"color":color[i],"label":{"show": true,"position":"top"}}}});
	    		for(var j=0;j<redFlower[i].length;j++){
					option.series[i].data.push(parseInt(redFlower[i][j].itegral));
	    		}
	    	}; 
	    	if (option && typeof option === "object") {
			    myChart.setOption(option, true);
			}
	    	
		});
    	
    	//小红花等信息的点击事件
    	function getJson(e){
    		var type=$(e).attr("id");
    		//console.log(type)
    		$.ajax({
	    		  url: "portipolioJson.do?staffCode=18060404&type="+type,
	    		  type: "GET",
	    		  dataType:"json",
	    		  success: function(result){
	    			  console.log("===============================")
	    			  console.log(result.portipolio1)
		    			var year = result.years;  //2016,2017
		    		    var portipolio = result.portipolio1; 
		    		    option.legend.data.splice(0,option.legend.data.length);
		    	    	option.series.splice(0,option.series.length);
		    	    	var color=["#1de9b6","#03a9f5","#a389d5"]
	    		    	for(var i=0;i<year.length;i++){
	    		    		option.legend.data[i]=year[i].year+"年";
	    		    		option.series.push({"name":year[i].year+"年","type":"bar","data":[],"itemStyle":{"normal":{"color":color[i],"label":{"show": true,"position":"top"}}}});
	    		    		for(var j=0;j<portipolio[i].length;j++){
	    						option.series[i].data.push(parseInt(portipolio[i][j].itegral));
	    		    		}
	    		    	};
	    		    	if(type=="0"){
	    		    		option.title.text="小红花 ";
	    		    		option.yAxis[0].max=40;
		    		    	option.yAxis[0].interval=10;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}else if(type=="4"){
	    		    		option.title.text="优质服务奖金 ";
	    		    		option.yAxis[0].max=400;
		    		    	option.yAxis[0].interval=50;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 元';
	    		    	}else if(type=="1"){
	    		    		option.title.text="单项奖个数  ";
	    		    		option.yAxis[0].max=10;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}
	    		    	else if(type=="2"){
	    		    		option.title.text="单项奖积分 ";
	    		    		option.yAxis[0].max=10;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 分';
	    		    	}
	    		    	else if(type=="3"){
	    		    		option.title.text="优质服务积分 ";
	    		    		option.yAxis[0].max=10;
		    		    	option.yAxis[0].interval=2;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 分';
	    		    	}
	    		    	else if(type="5"){
	    		    		option.title.text="小优质服务个数 ";
	    		    		option.yAxis[0].max=100;
		    		    	option.yAxis[0].interval=10;
		    		    	option.yAxis[0].axisLabel.formatter='{value} 个';
	    		    	}
	    		    	if (option && typeof option === "object") {
	    				    myChart.setOption(option, true);
	    				}
	    		  }
	    	});
    	}
    	
    	
    </script>
    

</body>

</html>