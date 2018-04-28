<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<link rel="stylesheet" type="text/css" href="css/common.css"/>
<script type="text/javascript" src="js/common-header.js"></script>

<!--公共样式——头部-->
<div class="common-header">
	<div class="blocker">
		<div class="search">
			<img class="search-img" src="img/common/ss_icon-g.png"/>
			<input type="text" name="" id="" value="" placeholder="请输入搜索内容"/>
			<img class="close" src="img/common/gb_icon.png"/>
		</div>
	</div>
	<div class="header">
		<div>
			<img class="left" src="img/common/LOGO_rzs.png"/>
			<div>
				<span>全国咨询电话：400-878-6338</span>
				<img class="right" src="img/common/phone.png"/>
				<c:if test="${user == null }"><ol>
					<li><a href="tologin.action">登录</a></li>
					<li><a href="toregister.action">注册</a></li>
				</ol></c:if>
				
				<c:if test="${user != null }"><div id="common-login">
					<ul>
						<li>
							<img src="img/common/tx.png"/>
							<span>${user.u_name }</span>
							<img id="arrow-right" src="img/common/图标_右箭头 - w.png"/>
						</li>
						<li><a href="personal_center.action">个人资料</a></li>
						<li><a href="personal_center.action">消息<span>(0)</span></a></li>
						<li><a href="logout.action">退出</li>
					</ul>
				</div></c:if>
				
				
				<img id="co-hd-search" src="img/common/ss_icon.png"/>
			</div>
		</div>
	</div>
	<div class="nav">
		<a href="index.action"><img src="img/common/2.png"/></a>
		<ul>
			<li>
				<a href="index.action">首页</a>
			</li>
			<li>
				<a href="#">全部课程</a>
				<ol>
					<li><a href="ui.action">UID设计</a></li>
					<li><a href="h5.action">Web前端</a></li>
					<li><a href="java.action">Java开发</a></li>
				</ol>
			</li>
			<li><a href="employment.action">就业行情</a></li>
			<li><a href="teachers.action?pageCode=1">师资力量</a></li>
			<li><a href="dynamic.action">资讯动态</a></li>
			<li>
				<a href="students.action?pageCode=1">学员天地</a>
				<!--<ol>-->
					<!--<li><a href="students.html">学员故事</a></li>-->
					<!--<li><a href="#">学员作品</a></li>-->
				<!--</ol>-->
			</li>
			<li><a href="video.action">视频</a></li>
			<li><a href="community.action">知海社区</a></li>
			<li>
				<a href="#">关于我们</a>
				<ol>
					<li><a href="about_us.action">学院介绍</a></li>
					<li><a href="environment.action">教学环境</a></li>
					<!--<li><a href="#">常见问题</a></li>-->
				</ol>
			</li>
		</ul>
	</div>
</div>
