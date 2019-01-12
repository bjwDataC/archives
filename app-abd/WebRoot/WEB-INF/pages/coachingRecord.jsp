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
									
								</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-content">
                    
                </div>
                <%@ include file="bottom.jsp" %>
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
    <%@include file="incloudeJS.jsp"%>
    <script type="text/javascript" src="${basePath}/js/coachingRecord.js">
    </script>

</body>

</html>