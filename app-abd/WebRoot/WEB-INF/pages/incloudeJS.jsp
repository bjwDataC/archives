<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
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
    <script src="${basePath}/js/lib/chartist/chartist-init.js"></script> --%>
    <script src="${basePath}/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="${basePath}/js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="${basePath}/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="${basePath}/js/lib/owl-carousel/owl.carousel-init.js"></script>
  <%--   <script src="${basePath}/js/scripts.js"></script> --%>
  
  <script>
	//随机图标
  	var icon=["address-book","address-card", "bandcamp","bath","eercast","envelope-open",,"etsy",
		"free-code-camp","grav","handshake-o","id-badge","id-card","imdb","linode","meetup","microchip",
		"podcast","quora","ravelry","shower","snowflake-o","superpowers","telegram","thermometer-empty",
		"thermometer-three-quarters","battery-full","bed","beer","bell","bicycle","binoculars",
		"birthday-cake","blind","bluetooth","bolt","bomb","book","bookmark","bookmark-o","braille",
		"briefcase","bug","building","bullhorn","bullseye","calculator","calendar","calendar-minus-o",
		"calendar-times-o","camera","camera-retro","car","fire-extinguisher","flag","flag-checkered",
		"flag-o","flash (alias)","flask","folder","folder-o","folder-open","folder-open-o","frown-o",
		"futbol-o","gamepad","gavel","gear (alias)","gears (alias)","gift","glass","glob"]
	var icon_F=["ti-wand","ti-save","ti-save-alt","ti-direction","ti-direction-alt","ti-user","ti-link",
		"ti-unlink","ti-trash","ti-target","ti-tag","ti-desktop","ti-tablet","ti-mobile","ti-email","ti-star",
		"ti-spray","ti-signal","ti-shopping-cart","ti-shopping-cart-full","ti-settings","ti-search",
		"ti-zoom-in","ti-zoom-out","ti-cut","ti-ruler","ti-ruler-alt-2","ti-ruler-pencil","ti-ruler-alt",
		"ti-bookmark","ti-bookmark-alt","ti-reload","ti-plus","ti-minus","ti-close","ti-pin","ti-pencil"
		]
	//随机颜色
  	var color=["#2100cc","#ce437a","#a07490","#59ff98","#a8de62","#32cf20","#407e89","#435b44","#1bced0",
  		"#d3a69c","#fbb5af","#2477da","#2db793","#3df9bd","#65e75b","#6107b8","#e653c6","#df83d2","#61f177",
  		"#e82a8d","#69ecb9","#13a3e3","#7a3df1","#5731fd","#f60bce","#5ffd26","#9ea159","#f9ef91","#1258cc",
  		"#b30223","#659728","#65b7ed","#8f8659","#2b2d21","#f86189","#610a45","#4c90f6","#8f586b","#bb6f6c",
  		"#be61a7","#45fd8d","#4f110f"]
  </script>
