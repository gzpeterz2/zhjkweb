<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>资源分享</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/link-co-common.js"></script>
<link rel="stylesheet" type="text/css" href="css/community.css" />

</head>
<body>
	<div class="video-banner">
		<img src="img/community/ban18.png" />
	</div>
	<div class="mian">
		<div class="content">
			<div class="c_left">
				<div class="header">
					<p class="plate">全部板块</p>
					<div class="plates">
						<div class="plates_list mar">
							<img src="img/community/zy_icon.png" />
							<div>
								<h3>全部分类</h3>
								<p>
									主题<span>3792</span>,帖数<span>26万</span>
								</p>
								<a href="postPageQuery.action?pageCode=1&condition="></a>
							</div>
						</div>
						<div class="plates_list mar">
							<img src="img/community/js_icon.png" />
							<div>
								<h3>资源分享</h3>
								<p>
									主题<span>3792</span>,帖数<span>26万</span>
								</p>
								<a href="postPageQuery.action?pageCode=1&condition=resource"></a>
							</div>
						</div>
						<div class="plates_list mar">
							<img src="img/community/xy_icon.png" />
							<div>
								<h3>技术交流</h3>
								<p>
									主题<span>3792</span>,帖数<span>26万</span>
								</p>
								<a href="postPageQuery.action?pageCode=1&condition=technology"></a>
							</div>
						</div>
						<div class="plates_list">
							<img src="img/community/zy_icon.png" />
							<div>
								<h3>最新活动</h3>
								<p>
									主题<span>3792</span>,帖数<span>26万</span>
								</p>
								<a href="postPageQuery.action?pageCode=1&condition=new"></a>
							</div>
						</div>

					</div>

				</div>
				<script type="text/javascript">
							$(function(){
								$("#all").click(function(){
									location="postPageQuery.action?pageCode=1&condition=";
								})
								$("#origin").click(function(){
									location="postPageQuery.action?pageCode=1&condition=original";
								})
								$("#last").click(function(){
									location="postPageQuery.action?pageCode=1&condition=last";
								})
								
							});
				</script>
				
				<div class="c_cnt">
					<p class="c_title">
						<c:if test="${condition == '' || condition== 'resource' || condition== 'technology' || condition== 'new'}"><span class="b_line" id="all">全部</span><span id="origin">原创</span> <span id="last">最新</span></c:if>
						<c:if test="${condition == 'original'}"><span id="all">全部</span><span class="b_line" id="origin">原创</span> <span id="last">最新</span></c:if>
						<c:if test="${condition == 'last'}"><span id="all">全部</span><span id="origin">原创</span> <span class="b_line" id="last">最新</span></c:if>
					</p>
					<ul class="c_list">
						<c:forEach items="${pageBean.beanList }" var="post">
							<li><img src="${post.cover}" class="c_img" />
								<div class="c_list_cnt">
									<h3>${post.title }<c:if test="${post.original == 1}"><span class="c_yc">原创</span></c:if>
									<c:if test="${post.top == 1}"><span class="c_zd">置顶</span></c:if>
									</h3>
									<p class="list_text">${post.content }</p>
									<div class="hour">
										<p class="hour_one">
											<span>${post.author }</span>于 <span>${post.postTime }</span>
											发表在<span><c:if test="${post.type == 'resource' }">[资源分享]</c:if>
											<c:if test="${post.type == 'new'}">[最新活动]</c:if>
											<c:if test="${post.type == 'technology'}">[技术分享]</c:if>
											</span>
										</p>
										<p></p>
									</div>
									<a href="article_${post.id }.action"></a>
								</div></li>
						</c:forEach>
					</ul>
					
					<div class="pages">
						<ul>
							<li><a
								href="postPageQuery.action?pageCode=1&condition=${condition }">首页</a></li>
							<c:if test="${pageBean.pageCode!=1 }">
								<li><a
									href="postPageQuery.action?pageCode=${pageBean.pageCode-1 }&condition=${condition }"><</a></li>
							</c:if>
							<c:forEach begin="1" end="${pageBean.totalPage }" var="i">
								<c:choose>
									<c:when test="${i==pageBean.pageCode }">
										<li class="current"><a>${i }</a></li>
									</c:when>
									<c:otherwise>
										<li><a
											href="postPageQuery.action?pageCode=${i }&condition=${condition }">${i }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageBean.pageCode!=pageBean.totalPage }">
								<li><a
									href="postPageQuery.action?pageCode=${pageBean.pageCode + 1 }&condition=${condition }">></a></li>
							</c:if>
							<li><a
								href="postPageQuery.action?pageCode=${pageBean.totalPage }&condition=${condition }">尾页</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="c_right">
				<div class="theme">
					发表新主题<a href="article.html"></a>
				</div>
				<div class="data">
					<p class="years">2017年07月</p>
					<div>
						<h3 class="day">13</h3>
						<h4 class="week">星期四</h4>
					</div>
				</div>
				<div class="resources">
					<h3>资源分享</h3>
					<div>
						<img src="img/community/1.png" alt="" />
						<p>Android学院热门【视频分享】</p>
						<a href="article.html"></a>
					</div>
					<div class="mar_top">
						<img src="img/community/2.png" alt="" />
						<p>如何开发一个完整的ios直播app(原理篇)</p>
						<a href="article.html"></a>
					</div>

				</div>
				<div class="new_activity">
					<h3>资源分享</h3>
					<div>
						<img src="img/community/3.png" alt="" />
						<p>Android学院热门【视频分享】</p>
						<a href="Jarticle.html"></a>
					</div>
					<div class="mar_top">
						<img src="img/community/2.png" alt="" />
						<p>如何开发一个完整的ios直播app(原理篇)</p>
						<a href="article.html"></a>
					</div>

				</div>
				<div class="hot">
					<h3>资源分享</h3>
					<ul class="hot_list">
						<li><a href="article.html">网页UI--css3实现多边形布局哦了打开佛空</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>
						<li><a href="article.html">网页UI--css3实现多边形布局</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/community.js"></script>
</html>