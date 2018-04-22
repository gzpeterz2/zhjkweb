<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>视频</title>
<link rel="stylesheet" type="text/css" href="css/video.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/link-common.js"></script>
<script type="text/javascript" src="js/video.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="video-banner">
		<img src="img/video/sp_banner.png" />
	</div>
	<div class="video-main">
		<div id="" class="select">
			<ul id="types">
				<div>分类：</div>
				<li class="current">全部</li>
				<li>UI设计</li>
				<li>Web前端</li>
				<li>Java开发</li>
			</ul>

		</div>
		<div id="" class="course">
			<ul id="videoShow">
				<c:forEach items="${pageBean.beanList }" var="video">
					<li><a href="video_${video.v_id }.action">
							<div id="">
								<img src="/${video.v_cover }" alt="" />
							</div>
							<div>
								<p>${video.v_title }</p>
								<p>
									<img src="img/index/TX.png" /> <span>1260人学习</span>
								</p>
							</div>
					</a></li>

				</c:forEach>

				

			</ul>
		</div>

		<script type="text/javascript">
			$(function(){
				var types = $("#types li");
				types.each(function(i){
					if (i == 0 ) {
						$(this).click(function(){
							location="videoPageQuery.action?pageCode=1&condition=";
						})
					} else if(i == 1) {
						$(this).click(function(){
							location="videoPageQuery.action?pageCode=1&condition=UI";
						})
					}else if(i == 2) {
						$(this).click(function(){
							location="videoPageQuery.action?pageCode=1&condition=WEB";
						})
					}else if(i == 3) {
						$(this).click(function(){
							location="videoPageQuery.action?pageCode=1&condition=JAVA";
						})
					}
					
				})
				
			})
			
		
		</script>
				
		<div class="pages">
				<ul>
					<li><a href="videoPageQuery.action?pageCode=1&condition=${condition }">首页</a></li>
					<c:if test="${pageBean.pageCode!=1 }">
						<li><a href="videoPageQuery.action?pageCode=${pageBean.pageCode-1 }&condition=${condition }"><</a></li>
					</c:if>
					<c:forEach begin="1" end="${pageBean.totalPage }" var="i" >
						<c:choose>
							<c:when test="${i==pageBean.pageCode }">
								<li class="current"><a>${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="videoPageQuery.action?pageCode=${i }&condition=${condition }">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${pageBean.pageCode!=pageBean.totalPage }">
						<li><a href="videoPageQuery.action?pageCode=${pageBean.pageCode + 1 }&condition=${condition }">></a></li>
					</c:if>
					<li><a href="videoPageQuery.action?pageCode=${pageBean.totalPage }&condition=${condition }">尾页</a></li>
				</ul>
			</div>


	</div>


</body>

</html>