<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="${basePath}/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${basePath}/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="${basePath}/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/css/lib/unix.css" rel="stylesheet">
    <link href="${basePath}/css/style.css" rel="stylesheet">
    <link href="${basePath}/css/myCss/table.css" rel="stylesheet">
</head>

<body>

    <%@ include file="../left.jsp" %>

    <%@ include file="../top.jsp" %>

    
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>基本信息</h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">基本信息</a></li>
                                    <li class="active">背景</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card alert">
                                <div class="card-header">
                                    <h4>背景</h4>
                                    <div class="card-header-right-icon">
                                        <ul>
                                            <li class="card-close" data-dismiss="alert"><i class="ti-close"></i></li>
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
                                    <div class="user-profile m-t-15">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="user-photo m-b-30">
                                                    <img class="img-responsive" src="image.do" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="user-profile-name dib">个人信息</div>
                                                <div class="useful-icon dib pull-right">
                                                    <span><a href=""><i class="ti-pencil-alt"></i></a> </span>
                                                    <span><a href=""><i class="ti-printer"></i></a></span>
                                                    <span><a href=""><i class="ti-download"></i></a></span>
                                                    <span><a href=""><i class="ti-share"></i></a></span>
                                                </div>
                                                <div class="custom-tab user-profile-tab" >
                                                    <ul class="nav nav-tabs" role="tablist">
                                                        <li role="presentation" class="active"><a href="#1" aria-controls="1" role="tab" data-toggle="tab">About</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane active" id="1">
                                                            <div class="contact-information">
                                                              
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                   
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        
                         <!-- 放表格 -->
                                   <div id="haha" class="tableType"></div> 
                            </div>
                        </div>
                        <!-- /# column -->
                       
                    </div>
                    <!-- /# row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="footer">
                                <p>版权所有 <span id="date-time"></span> <a href="http://192.168.0.187:8080/WebReport/ReportServer?op=fs_load&cmd=fs_signin" class="page-refresh">数据中心</a></p>
                            </div>
                        </div>
                    </div>
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
    <script src="${basePath}/js/lib/jquery.min.js"></script>
    <script src="${basePath}/js/backgroundTable.js"></script>
    <script src="${basePath}/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="${basePath}/js/lib/menubar/sidebar.js"></script>
    <script src="${basePath}/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    <script src="${basePath}/js/lib/bootstrap.min.js"></script>
    <!-- bootstrap -->  
    <!-- 基本信息 -->
    <script type="text/javascript" src="${basePath}/js/backgroundInfo.js"></script>
      
      
     
   
    

</body>
</html>


