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
               <section id="main-content">
               	<div class="card"><button type="button"class="btn btn-default">团队参与</button></div>
                <div class="main-content">
                    <div class="row" id="row-content">
                            
                    </div>
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
    <!-- jquery vendor -->
    <%@include file="incloudeJS.jsp"%>
    <script type="text/javascript" src="${basePath}/js/team.js"></script>

</body>

</html>