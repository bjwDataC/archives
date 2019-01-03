<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<!DOCTYPE html>
<html lang="zh-CN" style="height:100%;">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body style="height:100%;">
	<div class="wrapper">
		<div class="header header-large header-bg clearfix">
			<div class="logo">
				<div class="logo-img">
					<img src="images/logo.png" alt="">
				</div>
			</div>
		</div>
		<div class="log-wrap">
			<div class="log">
				<div class="log-in">
					<img src="${pageContext.request.contextPath}/images/ver-code.png" alt="">
				</div>
				
				<div class="log-con">
					<form class="form-group" action="">
					    <div class="form-acount">
							<input class="form-input js-acount" type="text" placeholder="账号" >
							<p class="p-code js-acount-text"></p>
						</div>
						<div class="form-acount">
							<input class="form-input js-pw" type="password" placeholder="密码" >
							<p class="p-code js-pw-text"></p>
						</div>
				   
				   
					    <div class="form-SMS">
					       <div class="form-input js-SMS-pw">
					       <p class="for-digital"><span>+86</span></p>
							<input class="for-digital-inpt" type="text" placeholder="短信登陆仅限大陆用户" >
					       </div>
							<p class="p-code js-SMS-text"></p>
						</div>
						
						<div class="form-SMS">
						   <div class="form-input js-SMS-pw" >
						     <input class="for-sms-ver" type="text" placeholder="请输入短信验证码" >
						  	  <p class="form-Verification"><span>获取验证码</span></p>
						   </div>						
							<p class="p-code js-pw-text"></p>
						</div>
					</form>
					
					<div class="btn-wrap">
						<button class="btn btn-log btn-super btn-click">登录</button>
					</div>
					
					<div class="log-other">
					   <div class="log-tel" >
					       <p>手机短信登陆</p>
					   </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--js存放-->
	<script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/public.js"></script>
	<script src="${pageContext.request.contextPath}/js/index.js"></script>
	<script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
	<script type="text/javascript">
	    //点击短信登陆 cursor:pointer
	    $(".log-other .log-tel").click(function(){
	    	$(".form-acount").css("display","none");
	    	$(".form-SMS").css("display","block");
	    	
	    });
	</script>
</body>

</html>





