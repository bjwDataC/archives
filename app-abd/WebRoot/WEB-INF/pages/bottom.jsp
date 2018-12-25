<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; -->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="footer">
				<p>
					版权所有 <span id="date-time"></span> <a
						href="http://192.168.0.187:8080/WebReport/ReportServer?op=fs_load&cmd=fs_signin"
						class="page-refresh">数据中心</a>
				</p>
			</div>
		</div>
	</div>

</body>
</html>