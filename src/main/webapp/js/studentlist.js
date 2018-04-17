$(function(){
	
	showStudentList();
/*	//学生列表ajax数据获取
	var succstudent=$.ajax({url:"http://localhost/zhjkweb/json/succstudent.action",type:"GET",async:false});
	succstudent=succstudent.responseJSON;
	console.log(succstudent);
    //循环遍历,填充
	for(var i=0;i<succstudent.length;i++){
		var tr_bg=i%2?"#f2f2fa":"#e6ebf6";
		$(".job_list").append("<tr style='background:"+tr_bg+";'><td>"+succstudent[i].name+"</td><td>"+succstudent[i].degree+"</td><td>"+succstudent[i].enterpirze+"</td><td>"+succstudent[i].salary+"</td><td>"+succstudent[i].career+"</td></tr>")
	}
	*/
/*	var cont_h=$(".job_list").outerHeight();
	var tr_h=$(".job_list tr").outerHeight();*/
	
/*	//上下自动轮播
	if(succstudent.length>(cont_h/tr_h)){
		console.log(1);
		
	}else{
		console.log(2);
	}*/
	
})
function showStudentList(){
	var url = "json/succstudent.action";
	$.post(url,function(data){
		$(data).each(function(i,n){
			var tr_bg=i%2?"#f2f2fa":"#e6ebf6";
			$(".job_list").append("<tr style='background:"+tr_bg+";'><td>"+n.name+"</td><td>"+n.degree+"</td><td>"+n.enterprize+"</td><td>"+n.salary+"</td><td>"+n.career+"</td></tr>")
		});
	},"json");
}
