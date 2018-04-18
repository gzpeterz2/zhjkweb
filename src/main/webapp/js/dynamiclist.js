/*页面加载  */
$(function(){
	//利用ajax发请求 学院动态
	var url = "${pageContext.request.contextPath}/instDynamic/findByPage.action";
	
	$.get(url,function(data){				
		//i 索引 n对象
		$(data).each(function(i,n){
			 //jq的DOM操作
			$("#inst_dynamic").append("<li><a href='" + "details.html" + "' target='_blank'>"+n.title+"</a></li>");
		});
	});
	//社区动态
	//利用ajax发请求 学院动态
	var urlc = "${pageContext.request.contextPath}/comDynamic/findByPage.action"; 
	$.get(urlc,function(data){
		//i 索引 n对象
		$(data).each(function(i,n){
			
			//jq的DOM操作
			$("#com_dynamic").append("<li><a href='" + "details.html" + "' target='_blank'>"+n.title+"</a></li>");
		});
	}); 
}); 