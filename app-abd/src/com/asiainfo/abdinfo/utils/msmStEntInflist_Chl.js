var msmStEntInflist_Chl = {
	defaults : {
		opTime : ""
	},

	inintMsmStEntInflistChlMm : function(opTime) {
		var self = this, obj = {};
		self.defaults.opTime = opTime == undefined ? this.defaults.opTime
				: opTime;
		obj.opTime = self.defaults.opTime;
		self.requestCallback('queryChlController/queryChlInfo', obj, function(
				data) {
			self.defaults.opTime = data.opTime;
			result.setEchart('industryEcharts', 3, data);
		});

	},
	msmStInfListChl : function(countyDesc) {
		var self = this, obj = {};
		self.defaults.countyDesc = countyDesc;
		obj.opTime = self.defaults.opTime;
		obj.countyDesc = self.defaults.countyDesc;
		self.requestCallback('queryChlController/queryCountyDesc', obj,
				function(data) {
					self.defaults.opTime = data.opTime;
					self.defaults.countyDesc = data.countyDesc;
					$('.dialog').show();
					if (data.title) {
						$('.dialog .city').html(data.title);
					} else {
						$('.dialog .city').html("暂无数据");
					}
					result.setEchart('industry-detail', 7, data);
				});
	},

	initTable : function(productName) {
		var self = this, obj = {};
		self.defaults.order = 'curmM DESC,incM DESC';
		self.defaults.productName = productName;
		obj.opTime = self.defaults.opTime;
		obj.countyDesc = self.defaults.countyDesc;
		obj.productName = self.defaults.productName;
		obj.order = self.defaults.order;
		$(".pages").hide();
		$(".table-body .table-content").remove();
		self.requestCallback('queryChlController/queryIndustyDetails', obj,
				function(data) {
					msmStEntInflist_Chl.showTable(data);
					pagination.btnF(msmStEntInflist_Chl.turnPage);
				});
	},

	turnPage : function(page, order) {
		var self = this, obj = {};
		obj.opTime = msmStEntInflist_Chl.defaults.opTime;
		obj.countyDesc = msmStEntInflist_Chl.defaults.countyDesc;
		obj.productName = msmStEntInflist_Chl.defaults.productName;
		if (order) {
			var orderArray = msmStEntInflist_Chl.defaults.order.split(','), column = order
					.split(' ')[0];
			for ( var i = 0; i < orderArray.length; i++) {
				var _tmp = orderArray[i].split(' ')[0];
				if (_tmp != column) {
					order += ',' + orderArray[i];
				}
			}
			msmStEntInflist_Chl.defaults.order = order;
		}
		obj.order = msmStEntInflist_Chl.defaults.order;
		obj.page = page;
		msmStEntInflist_Chl.requestCallback(
				'queryChlController/queryIndustyDetails', obj, function(data) {
					msmStEntInflist_Chl.showTable(data);
				});
	},
	showTable : function(data) {
		$(".pages").hide();
		$(".table-body .table-content").remove();
		$(".pages .totalItem").html("共" + data.total + "条信息");
		$(".pages .curPage").html(data.pageNum);
		$(".pages .totalPages").html(data.pages);
		if (data.list) {
			for ( var i = 0; i < data.list.length; i++) {
				var $html;
				if (i % 2 == 0) {
					$html = '<tr class="odd table-content">';
				} else {
					$html = '<tr class="table-content">';
				}
				$html += '<td>' + data.list[i].countyName + '</td>' + '<td>'
						+ data.list[i].feeNoName + '</td>' + '<td>'
						+ data.list[i].curmM + '</td>' + '<td>'
						+ data.list[i].incM + '</td>' + '<td>'
						+ data.list[i].custSvcNo + '</td>' + '<td>'
						+ data.list[i].custName + '</td>';
				$html += '</tr>';
				$(".tab-content .table-body").append($html);
			}
		}
		$(".pages").show();
	},

	requestCallback : function(url, obj, callback) {
		var self = this;
		$.ajax({
			type : 'post',
			url : url,
			data : obj,
			dataType : 'json',
			success : function(data) {
				callback && callback(data);
			},
			error : function(data) {
			}
		});
	}
};
