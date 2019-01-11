<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${basePath}/css/myCss/bootstrap-fileinput.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="${basePath}/js/lib/jquery-ui/jquery-ui.min.js"></script>
 <script src="${basePath}/js/bootstrap-fileinput.js"></script>
 <script type="text/javascript" src="${basePath}/js/jxy/jquery.fileupload.js"></script> 
</head>

<body>
	<div class="form-group">
		<div class="col-md-8">
			<div class="fileinput fileinput-new" data-provides="fileinput"
				id="uploadImageDiv">
				<div class="fileinput-new thumbnail"
					style="width: 200px; height: 150px;">
					<img src="${companyInfo.image}" alt="" />
				</div>
				<div class="fileinput-preview fileinput-exists thumbnail"
					style="max-width: 200px; max-height: 150px;"></div>
				<div>
				<form action="upload.do" method="post" enctype="multipart/form-data">
					<span class="btn default btn-file">
					 <span class="fileinput-new">选择图片</span> 
					 <span class="fileinput-exists">更改</span>
					<input type="file" name="file"/>
					</span> 
					<a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">移除</a>
					  <input type="submit" value='上传'>
				 </form>
					<span>请选择1M以内图片</span>
				</div>
			</div>
			<div id="titleImageError" style="color: #a94442"></div>
		</div>
	</div>
</body>

 

<script type="text/javascript">



</script>



</html>





