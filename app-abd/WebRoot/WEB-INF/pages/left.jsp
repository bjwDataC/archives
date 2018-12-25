<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左侧</title>
</head>
<body>
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                    <li class="active"><a class="sidebar-sub-toggle"><i class="ti-home"></i> 首页 <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                      <ul>
                            <li><a href="${basePath}/indexController.do">首页</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-pencil-alt"></i>基本信息 <span class="badge badge-primary">2</span><span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="${basePath}/backGroupIndex.do">背景|合同</a></li>
                            <li><a href="${basePath}/admContract.do">行政|考勤</a></li>
                        </ul>
                    </li>

                    <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i> 经营数据<span class="badge badge-primary">7</span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="${basePath}/baseData.do">日数据</a></li>       
                            <li><a href="#">月数据</a></li>
                            <li><a href="#">阿米巴</a></li>
                        </ul>
                    </li>

                    <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>成长之路 <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="${basePath}/companyKnowledge.do">知识图谱</a></li>
                            <li><a href="${basePath}/coachingRecord-v.do">辅导记录</a></li>
                            <li><a href="${basePath}/team.do">团队参与</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-layout"></i>荣誉成就<span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="${basePath}/portipolio.do">荣誉成就</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-heart"></i> 心灵家园 <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="${basePath}/app-event-calender.do">心灵家园</a></li>
                        </ul>
                    </li>
                    <li><a><i class="ti-close"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script src="${basePath}/js/lib/jquery.min.js"></script>
   <!--  <script type="text/javascript">
    $(function(){
    	//经营数据之月数据 
        var chooseul=$(".nano-content ul:first");
        var levelFist=chooseul.children("li:eq(2)").find("ul");
        console.log(levelFist); 
        levelFist.on("click", "li", function() {
        	var pageIndex=$(this).index();
        	window.location.href= ""; 	
        });
    });
	</script> -->
</body>
</html>

