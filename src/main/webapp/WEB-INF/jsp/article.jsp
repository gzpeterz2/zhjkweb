<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>知海社区</title>
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
				<a href="index.action">知海匠库</a>&gt; <a href="postPageQuery.action?pageCode=1&condition=">全部板块</a>&gt;
				<c:if test="${article.type == '最新活动' }"><a href="postPageQuery.action?pageCode=1&condition=new">${article.type }</a>&gt;</c:if>
				<c:if test="${article.type == '资源分享' }"><a href="postPageQuery.action?pageCode=1&condition=resource">${article.type }</a>&gt;</c:if>
				<c:if test="${article.type == '技术交流' }"><a href="postPageQuery.action?pageCode=1&condition=technology">${article.type }</a>&gt;</c:if>
				<a href="#">查看内容</a>
			</p>
			<div class="article_left">
				<div class="article_left_content">
					<div class="al_header">
						<h1 class="al_title"><span>【${article.type }】</span>${article.title }</h1>
						<div class="al_titles">
							<span class="times">${article.author } 发表于<time>${article.postTime }</time></span>
							<p>
								<span><img src="img/article/yj.png" align="center" />${article.views }</span>
								<span><img src="img/article/hf.png" align="center" />
									126</span> <span><img src="img/article/zan.png" align="center" />
									288</span>
							</p>
						</div>
					</div>
					<div class="al_mian">
						<h3 class="editor1">
							本帖最后由<span>${article.editor }</span>于
							<time>${article.edit_time }</time>
							编辑
						</h3>
						<ul class="editor_cnt">
							${article.content }
						</ul>
						<div class="praise">
							<a href="#"> <img src="img/article/preview_like_icon.png" />赞
							</a> <span>320</span>
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
					<p class="reply_title">
						<span>39</span>个回复
					</p>
					<hr class="b_line" />
					<ul class="reply_cnt">
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>
						<li class="reply_cnt_user"><img src="img/article/zzzz.png"
							class="hftx" />
							<div class="hf_cnt">
								<p class="user_cnt">
									<span class="name">安东旭</span> <span class="level">初级潜水员</span>
									<span class="announce">发表于<time>2016-11-17
											00:52:48</time></span>
								</p>
								<div class="hf_text">希望多学点东西，尽快找到工作!</div>
								<p class="review">
									<span class="zan_user">0</span> <span class="hf_user">回复</span>
								</p>
							</div></li>

					</ul>
					<div class="pages">
						<ul>
							<li><a href="#">首页</a></li>
							<li><a href="#"><</a></li>
							<li class="current"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">···</a></li>
							<li><a href="#">></a></li>
							<li><a href="#">尾页</a></li>
						</ul>
					</div>
				</div>
				<div class="distinguish">
					<div class="cnt_cnt">
						<div id="odiv"
							style="display: none; position: absolute; z-index: 100;">
							<img src="assets/pic/sx.png" title="缩小" border="0" alt="缩小"
								onclick="sub(-1);" /> <img src="assets/pic/fd.png" title="放大"
								border="0" alt="放大" onclick="sub(1)" /> <img
								src="assets/pic/cz.png" title="重置" border="0" alt="重置"
								onclick="sub(0)" /> <img src="assets/pic/sc.png" title="删除"
								border="0" alt="删除" onclick="del();odiv.style.display='none';" />
						</div>
						<div onmousedown="show_element(event)" style="clear: both"
							id="customized-buttonpane" class="editor"></div>
						<p class="textnum">当前已输入0字符,您还可以输入10000个字符</p>
					</div>
					<button class="btn_fbhf">发表回复</button>
					<div class="go_login">
						请先<a href="login.html">登录</a> 或<a href="register.html">注册</a>
					</div>
				</div>
			</div>

			<div class="c_right mrtop">
				<div class="theme">
					发表新主题<a href="keynote.html"></a>
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