var ctx = $("#ctx").val();
/**
 * ajax数据请求
 * @author liuguoling
 * @date 2017年9月20日
 *
 * url 路径
 * obj 参数对象
 * dataType 返回数据格式
 * callback 请求成功后执行的方法
 */
var requestCallback = function(url,obj,dataType,callback,error){
		var self = this;
		$.ajax({
			type:'post',
			url: url,
			data:obj,
			dataType:dataType,
			success:function(data){
				callback && callback(data);
			},
			error:function(data){
				error && error();
			}
		});
	};
	

/**
 * 文件上传
 */
var uploadCustomerFile = {
		/**
		 * 初始化
		 * @param ele  dom结构
		 * @param params  参数 上传类型 
		 */
		init:function(ele,params){
			this.ele = ele;
			this.createType = params;
			this.addPopUp(this.ele,this.createType);
		},
		/**
		 * 添加结构
		 * @param ele
		 * @param createType
		 */
		addPopUp:function(ele,createType){
			var self = this;
			ele.prepend('<div class="upload"></div>');
			ele.next('.upload').load('pages/acquisition/upload-customer-file.jsp',{'createType':createType},function(){
				self.addEvent(ele);
			});
		},
		/**
		 * 添加事件
		 * @param ele
		 */
		addEvent:function(ele){
			ele.find('.upload-button').unbind('click').click(function(){
				pagination.clearTimer();
				var bh = $(document).height();
			     var bw = $(document.body).width();
				$('.upload-file').show();
				$('.upload-file').prev().css({
		            height: bh,
		            width: bw,
		            display: "block"
		        });
			});
			
			$('.upload-file .close').unbind('click').click(function(){
				$('.upload-file').hide();
				$('.upload-file').prev().hide();
				pagination.timer();
			});
			
			$('.upload-submit').unbind('click').click(function(){
				var filename = $('#file').val();
				var filenames = filename.split(".");
				if($('.customName').val() == ''){
					alert("客户群名称不能为空");
					return;
				}
				if($('.customDese').val() == ''){
					alert("客户群描述不能为空");
					return;
				}
				if(filenames[1] == "txt" || filenames[1] == "xls" || filenames[1] == "csv"){
					pagination.timer();
					$("#fileUpload").ajaxSubmit({
				        type :'post',
				        url : "filter/customer/customGroupUpload",
				        dataType : 'json',
				        success : function(data) {
				        	if(data.status == 1){
				        		alert('客户群正在生成，请稍等...');
				        	}else if(data.status == '1004'){
				        		alert('获取文件出错！');
				        	}else if(data.status == '1005'){
				        		alert('创建文件目录失败！');
				        	}else{
				        		alert('未知异常');
				        	}
				        },
				        error : function(XmlHttpRequest, textStatus, errorThrown) {
				            alert("error");
				        }
				    });
					$('.upload-file').hide();
					$('.upload-file').prev().hide();
				}else{
					alert("文件类型错误");
					return;
				}
			});
		}
};
//分页
var pagination = {
		init:function(obj){
			var self = this;
			self.$ele = obj.$ele;
			self.url = obj.url;
			self.callback = obj.callback;
			self.params = obj.params;
			self.showData();
		},
		/**
		 * 绑定事件
		 */
		btnF:function(){
			var self = this;
			self.$ele.find(".changePage").val('');
			self.$ele.each(function(){
				var $this = $(this);
				var $preBtn = $this.find(".prev");
				var $nextBtn = $this.find(".next");
				var $curPage = $this.find(".present");
				var totalPages = $this.find(".totality").text();
				var $pageInput = $this.find(".changePage");
				var $sureBtn = $this.find(".confirm");

				$preBtn.unbind('click').click(function(){
					var _pageNo = parseInt($curPage.html());
					if(_pageNo <= 1){
						alert("当前已经是第一页了！");	
						return
					}else{
						var goPageNo = parseInt(_pageNo-1);
						pagination.gotoPage(goPageNo);
					}
				});

				$nextBtn.unbind('click').click(function(){
					var _pageNo = parseInt($curPage.html());

					if(_pageNo == totalPages){
						alert("当前已经是最后一页了！");	
						return
					}else{
						var goPageNo = parseInt(_pageNo+1);
						pagination.gotoPage(goPageNo);
					}
				});
				$sureBtn.unbind('click').bind('click',function(){
					var _pageNo = $pageInput.val();
					if(!isNaN(_pageNo)){
						var pageNo = parseInt(_pageNo);
						if(0 < pageNo && pageNo <= totalPages){
							pagination.gotoPage(pageNo);
						}else{
							alert("请输入范围内的数字");
						}
					}
					return false;
				});
			});
			
		},
		/**
		 * 数据展示
		 */
		showData:function(){
			var self = this;
			requestCallback(self.url,self.params,'json',function(data){
				if(data.status == 1 && data.data.tableInfo != null){
					var table = data.data.tableInfo;
					self.$ele.hide();
					self.$ele.find('.table-content').remove();
					self.$ele.find('.burster .total').text("共" + table.total + "条信息");
					self.$ele.find('.present').text(table.pageNum);
					self.$ele.find('.totality').text(table.pages);
					self.callback && self.callback(data);
					self.$ele.show();
					self.btnF();
				}
				
			});
		},
		/**
		 * 跳转页面
		 * @param goPageNo 
		 */
		gotoPage:function(goPageNo){
			var self = this;
			self.params.page = goPageNo;
			self.showData();
		},
		timer:function(){
			var self = this;
			self.timmer = setInterval(function(){
				self.showData();
			}, 10000);
		},
		clearTimer:function(){
			var self = this;
			clearInterval(self.timmer);
		}
};

/*分页使用案例
var obj = {};
obj.$ele = $('.customer-list');  //表格外层div
obj.url = 'filter/customer/customerInfoAll';  //后台路径
obj.callback = function(data){  //后台调用后取数规则
	if (data.list) {
		for ( var i = 0; i < data.list.length; i++) {
			var $html;
			if (i % 2 == 0) {
				$html = '<tr class="odd table-content">';
			} else {
				$html = '<tr class="table-content">';
			}
			$html += '<td>' + data.list[i].customerDesc + '</td>' + '<td>'
			+ data.list[i].createTime + '</td>' + '<td>'
			+ data.list[i].customerNum + '</td>' + '<td>'
			+ data.list[i].createType + '</td>' + '<td>'
			+ data.list[i].status + '</td>' + '<td>'
			+ data.list[i].dataStatus + '</td>';
			$html += '</tr>';
			$(".customer-screening .tbody").append($html);
		}
	}
};
obj.params = {};  //查询参数
pagination.init(obj);*/

function isToEight() {
	var date = new Date();
	var day = date.getDate();
	if (day >= 8) {
		return true;
	} else {
		return false;
	}
}

/**
 * 比较传输的两个时间
 * @param checkStartDate 开始时间
 * @param checkEndDate 结束时间
 * @returns {Boolean}
 */
function compareDate(checkStartDate, checkEndDate) {      
	var arys1= new Array();      
	var arys2= new Array();      
	if(checkStartDate != null && checkEndDate != null) {      
		arys1=checkStartDate.split('-');      
		var sdate=new Date(arys1[0],parseInt(arys1[1]-1),arys1[2]);      
		arys2=checkEndDate.split('-');      
		var edate=new Date(arys2[0],parseInt(arys2[1]-1),arys2[2]);      
		if(sdate > edate) {      
			return false;         
		}  else {
			return true;      
		}   
	}      

}
	
Format = function (fmt) { //author: meizz 
	var o = {
			"M+": this.getMonth() + 1, //月份 
			"d+": this.getDate(), //日 
			"h+": this.getHours(), //小时 
			"m+": this.getMinutes(), //分 
			"s+": this.getSeconds(), //秒 
			"q+": Math.floor((this.getMonth() + 3) / 3), //季度 
			"S": this.getMilliseconds() //毫秒 
	};
	if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for (var k in o)
		if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
}
Date.prototype.Format = Format;