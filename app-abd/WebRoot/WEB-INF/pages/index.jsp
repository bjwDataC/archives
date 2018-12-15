<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link href="${basePath}/css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="${basePath}/css/lib/font-awesome.min.css" rel="stylesheet"><!--和里程碑有关系-->
    <link href="${basePath}/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${basePath}/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="${basePath}/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="${basePath}/css/lib/weather-icons.css" rel="stylesheet" />
    <link href="${basePath}/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="${basePath}/css/lib/bootstrap.min.css" rel="stylesheet"><!--和里程碑有关系-->
    <link href="${basePath}/css/lib/unix.css" rel="stylesheet">
    <link href="${basePath}/css/style.css" rel="stylesheet">
</head>
<body class="sidebar-hide">

    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                  <!--  <li class="label">Main</li>   -->
                    <li class="active"><a class="sidebar-sub-toggle"><i class="ti-home"></i> 首页 <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <!-- <ul>
                            <li><a href="index.html">Dashboard 1</a></li>
                            <li><a href="index-v1.html">Dashboard 2</a></li>
                            <li><a href="index-school.html">Dashboard 3</a></li>
                            <li><a href="index-restaurant.html">Dashboard 4</a></li>
                        </ul> -->
                    </li>
                    <li class="label">基本信息</li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-pencil-alt"></i>Management <span class="badge badge-primary">28</span><span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="school-student.html">Student</a></li>
                            <li><a href="school-student-profile.html">Student Profile</a></li>
                            <li><a href="school-student-details.html">Student Detail</a></li>
                            <li><a href="school-hostel-room.html">Hostel</a></li>
                            <li><a href="school-all-student-table.html">Students Table</a></li>
                            <li><a href="school-student-search.html">search</a></li>
                            <li><a href="school-teacher-information.html">Teacher Info</a></li>
                            <li><a href="school-student-profile.html">Teacher Details</a></li>
                            <li><a href="school-all-teacher-table.html">Teacher Table</a></li>
                            <li><a href="school-class-information.html">Class Info</a></li>
                            <li><a href="school-subject.html">Subject</a></li>
                            <li><a href="school-class-routine.html">Routine</a></li>
                            <li><a href="school-attendace-sheet.html">Attendance</a></li>
                            <li><a href="school-grade-list.html">Exam Result</a></li>
                            <li><a href="school-new-exam.html">Exam Schedule</a></li>
                            <li><a href="school-account-setting.html">Setting</a></li>
                            <li><a href="school-student-fees-collection.html">Collection Fees</a></li>
                            <li><a href="school-payment-information.html">Payment info</a></li>
                            <li><a href="school-add-new-expenses.html">New Expense</a></li>
                            <li><a href="school-all-expense-list.html">Expense</a></li>
                            <li><a href="school-attendace-sheet.html">Attendance</a></li>
                            <li><a href="school-book-information.html">Book Info</a></li>
                            <li><a href="school-book-list.html">Book List</a></li>
                            <li><a href="school-all-parents-list.html">Parents List</a></li>
                            <li><a href="school-parents.html">Parents</a></li>
                            <li><a href="school-form.html">Form</a></li>
                            <li><a href="school-notice.html">Notice</a></li>
                            <li><a href="school-transport.html">Transport</a></li>
                        </ul>
                    </li>

                    <li class="label">Restaurant</li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i> Restaurant<span class="badge badge-primary">7</span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="restaurant-menu-one.html">Menu One</a></li>
                            <li><a href="restaurant-menu-two.html">Menu Two</a></li>
                            <li><a href="restaurant-menu-three.html">Menu Three</a></li>
                            <li><a href="restaurant-favourite-list.html">Favourite</a></li>
                            <li><a href="restaurant-order-list.html">Order List</a></li>
                            <li><a href="restaurant-booking.html">Booking</a></li>
                            <li><a href="restaurant-upload-menu.html">Upload Menu</a></li>
                        </ul>
                    </li>

                    <li class="label">Apps</li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>  Charts  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="chart-flot.html">Flot</a></li>
                            <li><a href="chart-morris.html">Morris</a></li>
                            <li><a href="chartjs.html">Chartjs</a></li>
                            <li><a href="chartist.html">Chartist</a></li>
                            <li><a href="chart-peity.html">Peity</a></li>
                            <li><a href="chart-sparkline.html">Sparkle</a></li>
                            <li><a href="chart-knob.html">Knob</a></li>
                        </ul>
                    </li>
                    <li><a href="app-event-calender.html"><i class="ti-calendar"></i> Calender </a></li>
                    <li><a href="app-email.html"><i class="ti-email"></i> Email</a></li>
                    <li><a href="app-profile.html"><i class="ti-user"></i> Profile</a></li>
                    <li><a href="app-widget-card.html"><i class="ti-layout-grid2-alt"></i> Widget</a></li>
                    <li class="label">Features</li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-layout"></i> UI Elements <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="milestone.html">éç¨ç¢</a></li>
                            <li><a href="ui-alerts.html">Alerts</a></li>
                            <li><a href="ui-badges.html">Badges</a></li>
                            <li><a href="ui-button.html">Button</a></li>
                            <li><a href="ui-dropdown.html">Dropdown</a></li>
                            <li><a href="ui-Images.html">Images</a></li>
                            <li><a href="ui-list-group.html">List Group</a></li>
                            <li><a href="ui-panels.html">Panels</a></li>
                            <li><a href="ui-progressbar.html">Progressbar</a></li>
                            <li><a href="ui-tab.html">Tab</a></li>
                            <li><a href="ui-wells.html">Wells</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-panel"></i> Components <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="uc-calendar.html">Calendar</a></li>
                            <li><a href="uc-carousel.html">Carousel</a></li>
                            <li><a href="uc-weather.html">Weather</a></li>
                            <li><a href="uc-datamap.html">Datamap</a></li>
                            <li><a href="uc-todo-list.html">To do</a></li>
                            <li><a href="uc-scrollable.html">Scrollable</a></li>
                            <li><a href="uc-sweetalert.html">Sweet Alert</a></li>
                            <li><a href="uc-toastr.html">Toastr</a></li>
                            <li><a href="uc-range-slider-basic.html">Basic Range Slider</a></li>
                            <li><a href="uc-range-slider-advance.html">Advance Range Slider</a></li>
                            <li><a href="uc-nestable.html">Nestable</a></li>
                            <li><a href="uc-portlets.html">Portlets</a></li>
                            <li><a href="uc-rating-bar-rating.html">Bar Rating</a></li>
                            <li><a href="uc-rating-jRate.html">jRate</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i> Table <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="table-basic.html">Basic</a></li>
                            <li><a href="table-data.html">Datatable</a></li>
                            <li><a href="table-export.html">Datatable Export</a></li>
                            <li><a href="table-row-select.html">Datatable Row Select</a></li>
                            <li><a href="table-jsgrid.html">Editable </a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-heart"></i> Icons <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="font-themify.html">Themify</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-map"></i> Maps <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="gmaps.html">Basic</a></li>
                            <li><a href="vector-map.html">Vector Map</a></li>
                        </ul>
                    </li>
                    <li class="label">Form</li>
                    <li><a href="form-basic.html"><i class="ti-view-list-alt"></i> Basic Form </a></li>
                    <li class="label">Miscellaneous</li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-files"></i> Invoice <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="invoice.html">Basic</a></li>
                            <li><a href="invoice-editable.html">Editable</a></li>
                        </ul>
                    </li>
                    <li><a class="sidebar-sub-toggle"><i class="ti-target"></i> Pages <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="page-login.html">Login</a></li>
                            <li><a href="page-register.html">Register</a></li>
                            <li><a href="page-reset-password.html">Forgot password</a></li>
                        </ul>
                    </li>
                    <li><a href="../documentation/index.html"><i class="ti-file"></i> Documentation</a></li>
                    <li><a><i class="ti-close"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /# sidebar -->


    <div class="header">
        <div class="pull-left">
            <div class="logo"><a href="index.html"> <img src="assets/images/logo.png" alt="" /> <span>Adminity</span></a></div>
            <div class="hamburger sidebar-toggle">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </div>
        </div>
        <div class="pull-right p-r-15">
            <ul>
                <li class="header-icon dib"><a href="#search"><i class="ti-search"></i></a></li>
                <li class="header-icon dib"><i class="ti-bell"></i>
                    <div class="drop-down">
                        <div class="dropdown-content-heading">
                            <span class="text-left">Recent Notifications</span>
                        </div>
                        <div class="dropdown-content-body">
                            <ul>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/3.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Mr. Saifun</div>
                                            <div class="notification-text">5 members joined today </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/3.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Mariam</div>
                                            <div class="notification-text">likes a photo of you</div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/3.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Tasnim</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/3.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Ishrat Jahan</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="text-center">
                                    <a href="#" class="more-link">See All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="header-icon dib"><i class="ti-email"></i>
                    <div class="drop-down">
                        <div class="dropdown-content-heading">
                            <span class="text-left">2 New Messages</span>
                            <a href="email.html"><i class="ti-pencil-alt pull-right"></i></a>
                        </div>
                        <div class="dropdown-content-body">
                            <ul>
                                <li class="notification-unread">
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/1.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Saiul Islam</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-unread">
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/2.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Ishrat Jahan</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/3.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Saiul Islam</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets/images/avatar/2.jpg" alt="" />
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Ishrat Jahan</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="text-center">
                                    <a href="#" class="more-link">See All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="header-icon dib"><img class="avatar-img" src="assets/images/avatar/1.jpg" alt="" /> <span class="user-avatar">Saifun <i class="ti-angle-down f-s-10"></i></span>
                    <div class="drop-down dropdown-profile">
                        <div class="dropdown-content-heading">
                            <span class="text-left">Upgrade Now</span>
                            <p class="trial-day">30 Days Trail</p>
                        </div>
                        <div class="dropdown-content-body">
                            <ul>
                                <li><a href="#"><i class="ti-user"></i> <span>Profile</span></a></li>
                                <li><a href="#"><i class="ti-wallet"></i> <span>My Balance</span></a></li>
                                <li><a href="#"><i class="ti-write"></i> <span>My Task</span></a></li>
                                <li><a href="#"><i class="ti-calendar"></i> <span>My Calender</span></a></li>
                                <li><a href="#"><i class="ti-email"></i> <span>Inbox</span></a></li>
                                <li><a href="#"><i class="ti-settings"></i> <span>Setting</span></a></li>
                                <li><a href="#"><i class="ti-help-alt"></i> <span>Help</span></a></li>
                                <li><a href="#"><i class="ti-lock"></i> <span>Lock Screen</span></a></li>
                                <li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Hello, <span>进晓宇</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">数据中心</a></li>
                                    <li class="active">Home</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">有效信息数</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-up color-success"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">有效回访数</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-up color-success"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">电话时长</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-down color-danger"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">远程月汇总</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-down color-danger"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">信息转换率排名</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-up color-success"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">电话邀约率排名</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-up color-success"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">净销售额排名</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-down color-danger"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-eight">
                                    <div class="stat-header">
                                        <div class="header-title pull-left">签约率排名</div>
                                        <div class="card-option drop-menu pull-right"><i class="ti-more-alt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="link"></i>
                                            <ul class="card-option-dropdown dropdown-menu">
                                                <li><a href="#"><i class="ti-loop"></i> Update data</a></li>
                                                <li><a href="#"><i class="ti-menu-alt"></i> Detail log</a></li>
                                                <li><a href="#"><i class="ti-pulse"></i> Statistics</a></li>
                                                <li><a href="#"><i class="ti-power-off"></i> Clear ist</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="stat-content">
                                        <div class="pull-left">
                                            <i class="ti-arrow-down color-danger"></i>
                                            <span class="stat-digit"> 14,2158.35</span>
                                        </div>
                                        <div class="pull-right">
                                            <span class="progress-stats">70%</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- row -->
                    
                    
                    
                    
                    
                  
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                            
                                <div class="col-lg-6">
                                    <div class="card alert">
                                        <div class="card-header">
                                            <h4 class="m-l-5">荣誉墙 </h4>
                                            <div class="card-header-right-icon">
                                                <ul>
                                                    <li><i class="ti-reload"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="media-stats-content text-center">
                                                <div class="row">
                                                    <div class="col-lg-4 border-bottom">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">5482</div>
                                                            <div class="stats-text">Followers</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 border-bottom">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">8320</div>
                                                            <div class="stats-text">New Followers</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 border-bottom">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">4712</div>
                                                            <div class="stats-text">New Tweets</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">3652</div>
                                                            <div class="stats-text">Retweets</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 border-left">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">9874</div>
                                                            <div class="stats-text">Mentions</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 border-left">
                                                        <div class="stats-content">
                                                            <div class="stats-digit">1254</div>
                                                            <div class="stats-text">Favorites</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6">
                                    <div class="card alert">
                                       <div class="card-body"  id="echChart" style="width: 700px; height: 275px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="row">
                                <div class="col-lg-6">
		                            <div class="card">
		                                <div class="card-header">
		                                    <h3 style="font-weight:bold;letter-spacing:15px;margin-top:10px;margin-bottom:30px;text-align:center;">辅导记录</h3>
		                                    <!-- <div class="card-header-right-icon">
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
		                                    </div> -->
		                                </div>
		                                <div class="recent-comment m-t-15">
		                                    <%-- <div class="media">
		                                        <div class="media-left">
		                                            <a href="#"><img class="media-object" src="${basePath}/images/avatar/1.jpg" alt="..."></a>
		                                        </div>
		                                        <div class="media-body">
		                                            <h4 class="media-heading color-primary">心灵感悟：Update dataUpdate dataUpdate data</h4>
		                                            <p>经理回复：</p>
		                                            <p class="comment-date">10 min ago</p>
		                                        </div>
		                                    </div>
		                                    <div class="media">
		                                        <div class="media-left">
		                                            <a href="#"><img class="media-object" src="${basePath}/images/avatar/6.jpg" alt="..."></a>
		                                        </div>
		                                        <div class="media-body">
		                                            <h4 class="media-heading color-success">遇到的困难</h4>
		                                            <p>经理回复：</p>
		                                            <p class="comment-date">1 hour ago</p>
		                                        </div>
		                                    </div>
		                                    <div class="media">
		                                        <div class="media-left">
		                                            <a href="#"><img class="media-object" src="${basePath}/images/avatar/3.jpg" alt="..."></a>
		                                        </div>
		                                        <div class="media-body">
		                                            <h4 class="media-heading color-danger">心灵感悟</h4>
		                                            <p>经理回复：</p>
		                                            <div class="comment-date">Yesterday</div>
		                                        </div>
		                                    </div>
		                                    <div class="media no-border">
		                                        <div class="media-left">
		                                            <a href="#"><img class="media-object" src="${basePath}/images/avatar/6.jpg" alt="..."></a>
		                                        </div>
		                                        <div class="media-body">
		                                            <h4 class="media-heading color-info">遇到的困难：</h4>
		                                            <p>经理回复：</p>
		                                            <div class="comment-date">Yesterday</div>
		                                        </div>
		                                    </div> --%>
		                                </div>
		                            </div>
		                            <!-- /# card -->
		                        </div>
                                <div class="col-lg-6">
		                            <div class="card alert">
		                                <div class="card-header">
		                                    <h3 style="font-weight:bolder;letter-spacing:15px;margin-top:10px;text-align:center;">里程碑</h3>
		                                </div>
		                                <div class="card-body">
		                                    <ul class="timeline">
		                                        <!-- <li>
		                                            <div class="timeline-badge primary"><i class="fa fa-smile-o"></i></div>
		                                            <div class="timeline-panel">
		                                                <div class="timeline-heading">
		                                                    <h5 class="timeline-title">Youtube, a video-sharing website, goes live.</h5>
		                                                </div>
		                                                <div class="timeline-body">
		                                                    <p>10 minutes ago</p>
		                                                </div>
		                                            </div>
		                                        </li>
		                                        <li>
		                                            <div class="timeline-badge warning"><i class="fa fa-sun-o"></i></div>
		                                            <div class="timeline-panel">
		                                                <div class="timeline-heading">
		                                                    <h5 class="timeline-title">Mashable, a news website and blog, goes live.</h5>
		                                                </div>
		                                                <div class="timeline-body">
		                                                    <p>20 minutes ago</p>
		                                                </div>
		                                            </div>
		                                        </li>
		                                        <li>
		                                            <div class="timeline-badge danger"><i class="fa fa-times-circle-o"></i></div>
		                                            <div class="timeline-panel">
		                                                <div class="timeline-heading">
		                                                    <h5 class="timeline-title">Google acquires Youtube.</h5>
		                                                </div>
		                                                <div class="timeline-body">
		                                                    <p>30 minutes ago</p>
		                                                </div>
		                                            </div>
		                                        </li>
		                                        <li>
		                                            <div class="timeline-badge success"><i class="fa fa-check-circle-o"></i></div>
		                                            <div class="timeline-panel">
		                                                <div class="timeline-heading">
		                                                    <h5 class="timeline-title">StumbleUpon is acquired by eBay. </h5>
		                                                </div>
		                                                <div class="timeline-body">
		                                                    <p>15 minutes ago</p>
		                                                </div>
		                                            </div>
		                                        </li> -->
		                                    </ul>
		                                </div>
		                            </div>
		                            <!-- /# card -->
		                        </div>
                            </div>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                 
                    
                    
                    
                    
                    
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card alert">
                                <div class="card-header">
                                    <h4 class="f-s-14">Facebook Source (Last 90 Days)</h4>
                                </div>
                                <div class="card-body">
                                    <div class="current-progress">
                                        <div class="progress-content">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="progress-text">Page Profile</div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="current-progressbar">
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-primary w-40" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                                40%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-content">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="progress-text">Favorite</div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="current-progressbar">
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-primary w-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                                60%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-content">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="progress-text">Like Story</div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="current-progressbar">
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                                70%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="progress-content">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="progress-text">Mobile</div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="current-progressbar">
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-primary w-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                                90%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4">
                            <div class="card bg-primary">
                                <div class="weather-widget">
                                    <div id="weather-one" class="weather-one p-22"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="testimonial-widget-one p-17">
                                    <div class="testimonial-widget-one owl-carousel owl-theme">
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <i class="fa fa-quote-right"></i>
                                                </div>
                                                <img class="testimonial-author-img" src="assets/images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- /# row -->
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

    <div id="search">
        <button type="button" class="close">Ã</button>
        <form>
            <input type="search" value="" placeholder="type keyword(s) here" />
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>
    
      


    <script src="${basePath}/js/lib/jquery.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/generateT.js"></script>
    <script type="text/javascript" src="${basePath}/js/achievement.js"></script> 
    <!-- jquery vendor -->
    <script src="${basePath}/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="${basePath}/js/lib/menubar/sidebar.js"></script>
    <script src="${basePath}/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    <script src="${basePath}/js/lib/bootstrap.min.js"></script>
    <!-- bootstrap -->
    <script src="${basePath}/js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="${basePath}/js/lib/weather/weather-init.js"></script>
    <script src="${basePath}/js/lib/circle-progress/circle-progress.min.js"></script>
    <script src="${basePath}/js/lib/circle-progress/circle-progress-init.js"></script>
  <%--   <script src="${basePath}/js/lib/chartist/chartist.min.js"></script>
    <script src="${basePath}/js/lib/chartist/chartist-init.js"></script> --%>
    <script src="${basePath}/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="${basePath}/js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="${basePath}/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="${basePath}/js/lib/owl-carousel/owl.carousel-init.js"></script>
  <%--   <script src="${basePath}/js/scripts.js"></script> --%>
  
  <script>
    	
    	$(document).ready(function() {
    		console.log("ceshi")
    		
    		var icon=["address-book","address-card", 
    			"bandcamp","bath",
    			"eercast","envelope-open",,"etsy",
    			"free-code-camp","grav","handshake-o","id-badge","id-card",
    			"imdb","linode","meetup","microchip","podcast",
    			"quora","ravelry","shower","snowflake-o","superpowers","telegram","thermometer-empty",
    			"thermometer-three-quarters","battery-full","bed","beer","bell","bicycle","binoculars",
    			"birthday-cake","blind","bluetooth","bolt","bomb","book","bookmark",
    			"bookmark-o","braille","briefcase","bug","building","bullhorn","bullseye",
    			"calculator","calendar","calendar-minus-o"
    			,"calendar-times-o","camera","camera-retro","car","fire-extinguisher","flag",
    			"flag-checkered","flag-o","flash (alias)","flask","folder","folder-o","folder-open",
    			"folder-open-o","frown-o","futbol-o","gamepad","gavel","gear (alias)","gears (alias)",
    			"gift","glass","glob"]
    			console.log(icon.length)
    			console.log("这是icon的数组长度")
	        $.ajax({
	           	type : 'get',  //传输类型
	           	url : 'education.do?staffCode=18060404',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	               	console.log(result)
	               	if(result.list.length==0){
	               		$(".timeline").append("<div style='height:200px;text-align:center;line-height:200px;font-size:30px;'>暂无数据</div>")
	               	}
	                for(var i=0;i<result.list.length;i++){
	                	var random = Math.floor(Math.random()*(0-68+1)+68);
	                	var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
	                	var li="<li>"+
	                    "<div class='timeline-badge' style='background-color:"+color+";'>"+
	                    	"<i class='fa fa-"+icon[random]+"'></i>"+
	                    "</div>"+
	                    "<div class='timeline-panel'>"+
	                    	"<div class='timeline-heading'>"+
	                            "<h4 class='timeline-title' style='font-weight:bold;'>"+result.list[i].incident+"</h4>"+
	                        "</div>"+
	                        "<div class='timeline-heading'>"+
	                            "<h5 class='timeline-title'>"+result.list[i].inspiration+"</h5>"+
	                        "</div>"+
	                        "<div class='timeline-body'>"+
	                            "<p style='text-align:right;'>"+result.list[i].time+"</p>"+
	                        "</div>"+
	                    "</div>"+
	                "</li>";
	                	$(".timeline").append(li)
	                }
	           	} 
			});
    		
    		$.ajax({
	           	type : 'get',  //传输类型
	           	url : 'coachingRecord.do?staffCode=18060404',
	           	dataType : 'json', //返回数据形式为json
	           	success : function(result) {
	               	console.log(result.length)
	               	console.log("=======================")
	               	if(result.length==0){
	               		$(".recent-comment").append("<div style='height:200px;text-align:center;line-height:200px;font-size:30px;'>暂无数据</div>")
	               	}
	                for(var i=0;i<result.length;i++){
						if(result[i].type=="心得感悟"){
							var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
		                	var li="<div class='media'>"+
			                        "<div class='media-left'>"+
			                        "<a href='#'>"+
			                        	"<img class='media-object' src='${basePath}/images/avatar/1.jpg' alt='...'>"+
			                        "</a>"+
			                    "</div>"+
			                    "<div class='media-body'>"+
			                        "<h4 class='media-heading color-primar'>"+"<text style='color:"+color+";font-weight:bold;'>"+result[i].type+"</text>"+"："+result[i].content+"</h4>"+
			                        "<p>"+"<text style='font-weight:bold;font-size:18px;'>经理回复：</text>"+result[i].managerReply+"</p>"+
			                        "<p class='comment-dat'>"+result[i].time+"</p>"+
			                    "</div>"+
			                "</div>";
		                	$(".recent-comment").append(li)
						}else{
							var color='#'+Math.floor(Math.random()*0xffffff).toString(16);
		                	var li="<div class='media'>"+
			                        "<div class='media-left'>"+
			                        "<a href='#'>"+
			                        	"<img class='media-object' src='${basePath}/images/avatar/6.jpg' alt='...'>"+
			                        "</a>"+
			                    "</div>"+
			                    "<div class='media-body'>"+
			                        "<h4 class='media-heading color-primar'>"+"<text style='color:"+color+";font-weight:bold;'>"+result[i].type+"</text>"+"："+result[i].content+"</h4>"+
			                        "<p>"+"<text style='font-weight:bold;font-size:18px;'>经理回复：</text>"+result[i].managerReply+"</p>"+
			                        "<p class='comment-dat'>"+result[i].time+"</p>"+
			                    "</div>"+
			                "</div>";
		                	$(".recent-comment").append(li)
						}
	                	
	                }
	           	} 
			});
    		
	        
	    });
    	
    
    	
    	
    </script>
  
  
</body>
</html>