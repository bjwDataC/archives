 
$.ajax({
    	  type:'POST',
    	  url:'basicInfo/contract.do',
    	  data:{},
    	  dataType: "json",
    	  success:function(obj){  
    		  console.log(obj)
    		  if(obj.length>0){  //若有合同数			  
    		  var objContract={};
    		  var theadData=["编号","类型","到职日期","签订日期","到期日期","合同期限","备注"];
    		  objContract.theadData=theadData;
    		  
    		  var arrs=new Array();
    		 for(var i=0;i<obj.length;i++){	
    			 var arr=new Array();
    			 Object.keys(obj[i]).forEach(function(index){	 
    				 console.log(obj[i][index]);	 
    				 arr.push(obj[i][index]);	 
    			 });
    		 }
    			 arrs.push(arr); 
    			objContract.bodyData=arrs;
    			
    	
    			
    			
    			
    			var table=createTable(objContract)
    		
    			
    			
    			var haha= document.getElementById("haha").appendChild(table);
    			/* document.getElementBy */
    			 
    			 
    			
    			
    			
    		  }
    		  
    	      
    	  }
      });
      
     
      
      
      function  createTable(obj){
    	 /*  obj={
    		        theadData:["编号","类型","到职日期","合同期限","签订日期","到期日期","备注"],
    		    	bodyData:[
    		    		  ["11","12","13","14","15","16","17"],
    		    		  ["21","22","33","24","25","26","27"],
    		    	         ]
    		      }; */
    	  var tabNode=document.createElement("table");   //创建table 
		  tabNode.setAttribute("class","table table-hover");  
		  //<caption>基本的表格布局</caption>
		  var tabCap=document.createElement("caption");
		  tabCap.setAttribute("class","tableCap");
		  tabCap.innerHTML="合同管理";
		  tabNode.appendChild(tabCap);
		   var thead = tabNode.createTHead();     //创建Thead
           var tbody = tabNode.createTBody();     //创建TBody
           var theadTr=thead.insertRow();                     //创建Thead行
           for(var i=0;i<obj.theadData.length;i++){
        	   var tdThead=theadTr.insertCell();     //列 
        	   tdThead.innerHTML=obj.theadData[i];
           }
           tabNode.appendChild(thead);
           
		   for(var i=0;i<obj.bodyData.length;i++){
			  var thNode=tbody.insertRow();             //行
			for(var j=0;j<obj.bodyData[i].length;j++){
				 var tdNode1=thNode.insertCell();     //列 
				 tdNode1.innerHTML=obj.bodyData[i][j];
			}
		  } 
		  tabNode.appendChild(tbody);
		  console.log(tabNode);
		  return tabNode;
      }
      
    
    //  console.log(createTable(obj)); 