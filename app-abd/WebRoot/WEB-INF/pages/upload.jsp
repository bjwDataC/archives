<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<title></title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${basePath}/css/myCss/bootstrap-fileinput.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${basePath}/js/lib/jquery-ui/jquery-ui.min.js"></script>
<script src="${basePath}/js/bootstrap-fileinput.js"></script>
<script type="text/javascript"
	src="${basePath}/js/jxy/jquery.fileupload.js"></script>
<%-- <script type="text/javascript" src="${basePath}/js/jxy/ajaxfileupload.js"></script> --%>
</head>

<body>
	<form action="upload.do" method="post" enctype="multipart/form-data">
	   选择文件<input type='file' name='file'>
	    <input type="submit" value='上传'>
	</form>
</body>

</html>





