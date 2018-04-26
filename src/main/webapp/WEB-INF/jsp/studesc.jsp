<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学员故事</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/link-co-common.js"></script>
<link rel="stylesheet" type="text/css" href="css/community.css" />
<link rel="stylesheet" type="text/css" href="css/article_left.css" />
<link rel="stylesheet" href="assets/design/css/trumbowyg.css">
<script src="assets/jquery.min.js"></script>
<script src="assets/trumbowyg.js"></script>
<script src="assets/plugins/base64/trumbowyg.base64.js"></script>
</head>
<body>
	<div class="mian">
		<div class="content">
			<p class="tit">
				<a href="index.action">知海匠库</a>&gt; <a
					href="postPageQuery.action?pageCode=1&condition=">全部板块</a>&gt;
					<a href="students.action?pageCode=1&condition=">学员故事</a>&gt;
				<a href="#">查看内容</a>
			</p>
			<div class="article_left">
				<div class="article_left_content">
					<div class="al_header">
						<h1 class="al_title">
							<span>【学员故事】</span>${studentDesc.name }</h1>
						<div class="al_titles">
							<span class="times">社区管理员 发表于<time>${studentDesc.post_time }</time></span>
							<p>
								<span><img src="img/article/yj.png" align="center" />${studentDesc.views }</span>
								<span><img	src="img/article/zan.png" align="center" /> ${studentDesc.thumbups }</span>
							</p>
						</div>
					</div>
					<div class="al_mian">
						<h3 class="editor1">
							本帖最后由<span>社区管理员</span>于
							<time>${studentDesc.edit_time }</time>
							编辑
						</h3>
						<ul class="editor_cnt">${studentDesc.content }
						</ul>
						<div class="praise">
							<a href="#"> <img src="img/article/preview_like_icon.png" />赞
							</a> <span>${studentDesc.thumbups }</span>
							<div>+1</div>
						</div>
					</div>
					<div class="al_footer">
						<p class="recommended">精华推荐</p>
						<ul class="recommended_list">
							<li><a href="JavaScript:;">全新的UI设计免费资源持续更新中：视频+资源+软件+技巧/经验+作品+...</a></li>
							<li><a href="JavaScript:;">全新的UI设计免费资源持续更新中：视频+资源+软件+技巧/经验+作品+...</a></li>
							<li><a href="JavaScript:;">全新的UI设计免费资源持续更新中：视频+资源+软件+技巧/经验+作品+...</a></li>
							<li><a href="JavaScript:;">全新的UI设计免费资源持续更新中：视频+资源+软件+技巧/经验+作品+...</a></li>
							<li><a href="JavaScript:;">全新的UI设计免费资源持续更新中：视频+资源+软件+技巧/经验+作品+...</a></li>
						</ul>
						<div class="Share">
							分享至： <span class="wb"><a href="JavaScript:;"></a></span> <span
								class="wx"><a href="JavaScript:;"></a></span> <span class="kj"><a
								href="JavaScript:;"></a></span> <span class="sc"><a
								href="JavaScript:;"></a></span> <a href="JavaScript:;" class="shoucang">收藏</a>
						</div>
					</div>
				</div>
				<div class="reply_list">
					
				</div>
			</div>

			<div class="c_right mrtop">
				<div class="theme">
					发表新主题<a href="keynote.action"></a>
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
						<a href="JavaScript:;"></a>
					</div>
					<div class="mar_top">
						<img src="img/community/2.png" alt="" />
						<p>如何开发一个完整的ios直播app(原理篇)</p>
						<a href="JavaScript:;"></a>
					</div>

				</div>
				<div class="new_activity">
					<h3>资源分享</h3>
					<div>
						<img src="img/community/3.png" alt="" />
						<p>Android学院热门【视频分享】</p>
						<a href="JavaScript:;"></a>
					</div>
					<div class="mar_top">
						<img src="img/community/2.png" alt="" />
						<p>如何开发一个完整的ios直播app(原理篇)</p>
						<a href="JavaScript:;"></a>
					</div>

				</div>
				<div class="hot">
					<h3>热门推荐</h3>
					<ul class="hot_list">
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
						<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/community.js"></script>
<script src="js/article.js"></script>

</html>
