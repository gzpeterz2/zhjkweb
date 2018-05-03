<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/dynamic.css"/>
		<title>学院动态</title>
	</head>
	<body>
		<div class="video-banner">
			<img src="img/dynamic/group18.png"/>
		</div>
		<div class="content">
			<div class="d_cnt">
				<p class="title"><a href="index.action">首页</a>&gt;<a href="#">学院动态</a></p>
				<div class="d_mian">
					<ul class="mian_list">
						<c:forEach items="${pageBean.beanList }" var="instDyn">
							<li><a href="instDynamic_${instDyn.art_id }.action"><span>${instDyn.title }</span><time>${instDyn.post_time }</time></a></li>
						</c:forEach>
						<!-- <li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>【现金福利】11.11知海匠库互联网学院周年庆来点正经的</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li>
						<li><a href="details.html"><span>知海匠库互联网学院再增分校--深圳分校来啦</span><time>2017-09-15</time></a></li> -->
					</ul>
					<div class="pages">
						<ul>
							<li><a href="instDynamicPageQuery.action?pageCode=1">首页</a></li>
							<c:if test="${pageBean.pageCode > 1 }">
								<li><a href="instDynamicPageQuery.action?pageCode=${pageBean.pageCode - 1 }"><</a></li>		
							</c:if>
							<c:forEach begin="1" end="${pageBean.totalPage }" var="i">
								<!-- if else -->
								<c:choose>
									<c:when test="${i == pageBean.pageCode }">
										<li class="current"><a>${i }</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="instDynamicPageQuery.action?pageCode=${i }">${i }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageBean.pageCode < pageBean.totalPage }">
								<li><a href="instDynamicPageQuery.action?pageCode=${pageBean.pageCode + 1 }">></a></li>		
							</c:if>
							<li><a href="instDynamicPageQuery.action?pageCode=${pageBean.totalPage }">尾页</a></li>
							<!-- <li class="current"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">···</a></li>
							<li><a href="#">></a></li>
							<li><a href="#">尾页</a></li> -->
						</ul>
					</div>
				</div>
				<div class="d_right">
					<a href="ui.action"><img src="img/dynamic/rot_1.png"/></a>
					<a href="java.action"><img src="img/dynamic/right_2.png"/></a>
				</div>
			</div>
			
		</div>
	</body>
</html>
