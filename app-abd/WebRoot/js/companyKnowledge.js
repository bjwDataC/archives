function clickButtom(e) {
	var stutas = $(e).attr("id");
	var chapter="";
	if (e == "") {
		stutas = 1;
	}
	console.log($(e).attr("name"))
	if($(e).attr("name")=="book"){
		stutas =3;
		chapter=$(e).next().html();
		console.log(chapter)
	}
	
	$.ajax({
		type : 'get', //传输类型
		url : 'companyData.do?stutas=' + stutas + '&date='+'&chapter='+chapter,
		dataType : 'json', //返回数据形式为json
		success : function(result) {
			//公司功课和新员工培训
			if (stutas == "1") {
				$("#main-content").show();
				$("#readingFeeling").hide();
				$("#manage").hide();
				$(".qualification").hide();
				$("#main-content .table thead").html("");
				$("#main-content .table tbody").html("");
				$("#months").hide();
				var score = "";
				console.log(result.companyList);
				console.log("============================")
				if (result.inductionTrainingList.length != 0) {
					score = result.inductionTrainingList[0].staffCode
				}
				var thead = "<tr><th >序号</th><th style='width:200px;'>类别</th><th style='width:200px;'>级别</th><th style='width:450px;'>课程名称</th><th>成绩</th><th>日期</th></tr>"
				$("#main-content .table thead").append(thead)
				
				for (var i = 0; i < result.companyList.length; i++) {
					var random = Math.floor(Math.random()* (0 - 68 + 1) + 68);
					var color = '#'+ Math.floor(Math.random() * 0xffffff).toString(16);
					var num=0;
					var tr = "<tr>"
							+ "<th scope='row'>"
							+ (i + 1)
							+ "</th>"
							+ "<td onclick='subject(this)' name='"+i+"'><span class='badge' style='display:inline-block;margin-top:4px;background-color:"+color+";'>"
							+ result.companyList[i].type+"(<span>"+result.companyList[i].types.length+")</span>"+"<i class='ti-arrow-down'></i>"
							+ "</span></td>"
							+ "<td>"
							+ result.companyList[i].types[num].level
							+ "</td>"
							+ "<td>"
							+ result.companyList[i].types[num].courseTitle
							+ "</td>"
							+ "<td style='color:"+color+";'>"
							+ result.companyList[i].types[num].scope
							+ "</td>" + "<td>"
							+ result.companyList[i].types[num].time
							+ "</td>" + "</tr>";
					$("#main-content .table tbody").append(tr);
					for(var j=1;j<result.companyList[i].types.length;j++){
						num=j;
						var tr = "<tr class='a"+i+"' hidden>"
						+ "<th scope='row'>"
						+ (j + 1)
						+ "</th>"
						+ "<td><span class='badge' style='display:inline-block;margin-top:4px;background-color:"+color+";'>"
						+ result.companyList[i].type
						+ "</span></td>"
						+ "<td>"
						+ result.companyList[i].types[num].level
						+ "</td>"
						+ "<td>"
						+ result.companyList[i].types[num].courseTitle
						+ "</td>"
						+ "<td style='color:"+color+";'>"
						+ result.companyList[i].types[num].scope
						+ "</td>" + "<td>"
						+ result.companyList[i].types[num].time
						+ "</td>" + "</tr>";
						$("#main-content .table tbody").append(tr);
						$(".a"+i).hide();
					}
					
				}
				$("#main-content .table tbody").
				append("<tr><th scope='row'>"
				+ (result.companyList.length + 1)
				+ "</th><td>新员工培训</td><td>公司级</td><td>新员工入职培训</td><td class='color-primary'>"
				+ score
				+ "</td><td></td></tr>")
			} else if (stutas == "2") {
				//管理知识
				$("#months").show();
				$("#main-content").hide();
				$("#readingFeeling").hide();
				$("#manage").show();
				$(".qualification").show();
				$("#manage .table tbody").html("");
				$("#qualification .table tbody").html("")
				console.log(result)
				console.log("=========")
				for (var i = 0; i < result.management.length; i++) {
					var score = result.management[i].score.substring(0,result.management[i].score.indexOf("."))
					console.log(score)
					var tr = "<tr>" + "<th scope='row'>"
							+ (i + 1) + "</th>" + "<td>"
							+ result.management[i].classGrade
							+ "</td>" + "<td>"
							+ result.management[i].periods
							+ "</td>"
							+ "<td><span class='badge'>"
							+ score + "</span></td>" + "<td>"
							+ result.management[i].ranking
							+ "</td>" + "<td>"
							+ result.management[i].year
							+ "</td>" + "</tr>";
					$("#manage .table tbody").append(tr)
				}

				for (var i = 0; i < result.qualification.length; i++) {
					if(result.qualification[i].nowStartTime==null){
						result.qualification[i].nowStartTime="无数据";
					}
					var tr = "<tr>"
							+ "<th scope='row'>"
							+ (i + 1)
							+ "</th>"
							+ "<td>"
							+ result.qualification[i].nowPosition
							+ "</td>"
							+ "<td>"
							+ result.qualification[i].aplayForPosition
							+ "</td>"
							+ "<td><span class='badge'>"
							+ result.qualification[i].nowStartTime
							+ "</span></td>"
							+ "<td>"
							+ result.qualification[i].aplayForStartTime
							+ "</td>" + "<td>"
							+ result.qualification[i].date
							+ "</td>" + "</tr>";
					$("#qualification .table tbody").append(tr)
				}
			} else {
				console.log(result)
				$("#months").show();
				$("#main-content").hide();
				$("#readingFeeling").show();
				$("#manage").hide();
				$(".qualification").hide();
				$("#main-content1").html("");
				$(".col-lg-2").html("");
				var image_color="";
				for(var i=0;i<result.bookName.length;i++){
					if(i==0){
						image_color="image_color"
					}else{
						image_color=""
					}
					var div="<div class='card alert' name='book'>"+
								"<img name='book' onclick='findBook(this)' src='/app-abd/images/avatar/"+result.bookName[i]+".jpg' style='width:217px;height:300px;'>"+
								"<span hidden id='bookSpan'>"+result.bookName[i]+"</span>"+
							"</div>"
					$(".col-lg-2").append(div)
				}
				$(".col-lg-2 .card:first-child").css("backgroundColor","#D3D3D3")
				//读书心得
				for (var i = 0; i < result.readingFeelingList.length; i++) {
					//if(result.readingFeelingList[i].type)
					var div ="<div class='col-lg-12' style='width:180px;position:absolite;height:50px;left:-220px;top:50px;background-color:white;padding:0 0 0 5px;line-height:50px;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;'>"
							+result.readingFeelingList[i].managerReply+"</div>"+
							"<div class='col-lg-12' style='background-color:white;margin-left:20px;'>"+
							"<div style='height:50px;line-height:50px;'>"+result.readingFeelingList[i].time+"</div><div style='padding:0 0 20px 0;'>"+result.readingFeelingList[i].content+"</div>"+
							"<span></span>"+
							"</div>"
					$("#main-content1").append(div);
				}
				
			}

		}
	});
}

$(document).ready(function() {
	clickButtom("")
});

function findBook(e){
	var chapter=$(e).next().html();
	$(e).parent().css("backgroundColor","#D3D3D3");
	$(e).parent().siblings().css("backgroundColor","");
	$.ajax({
		type : 'get', //传输类型
		url : 'companyData.do?stutas=3' + '&date='+'&chapter='+chapter,
		dataType : 'json', //返回数据形式为json
		success : function(result) {
			$("#main-content").hide();
			$("#readingFeeling").show();
			$("#manage").hide();
			$(".qualification").hide();
			$("#main-content1").html("");
			for (var i = 0; i < result.readingFeelingList.length; i++) {
				//if(result.readingFeelingList[i].type)
				var div ="<div class='col-lg-12' style='width:180px;position:absolite;height:50px;left:-220px;top:50px;background-color:white;padding:0 0 0 5px;line-height:50px;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;'>"
						+result.readingFeelingList[i].managerReply+"</div>"+
						"<div class='col-lg-12' style='background-color:white;margin-left:20px;'>"+
						"<div style='height:50px;line-height:50px;'>"+result.readingFeelingList[i].time+"</div><div style='padding:0 0 20px 0;'>"+result.readingFeelingList[i].content+"</div>"+
						"<span></span>"+
						"</div>"
				$("#main-content1").append(div);
			}
			
		}
	});
}

function subject(e){
	var className=$(e).attr("name")
	$(".a"+className).toggle();
}















