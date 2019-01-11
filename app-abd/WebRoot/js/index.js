/**
 * 登录页面js
 */
$(function() {
	$('.btn-click').click(function() {
		var id = $.trim($('.js-acount').val());
		var pwd  = $.trim($('.js-pw').val());
		console.log(id);
		if(id != '' && pwd != ''){
			var obj = {};
			obj.userId = id;
			obj.pwd = pwd;
			requestCallback('login.do',obj,'json',function(data){
				console.log("---");
				if(data.status == 1){
					window.location.href= 'indexController.do';
				}else{
					alert(data.message);
				}
			});
		}
	})
	
	
	
 

})




    












