<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>关于我们</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/about_us.css"/>
	</head>
	<body>
		<div class="video-banner">
			<img src="${banner.src }">
		</div>
		<div class="mian">
			<div class="introduction row">
				<div class="int_title">
					<h3 class="ition_cnt_title">公司简介</h3>
					<h4 class="ition_cnt_titles">INTRODUCTION</h4>
				</div>
				<img src="${companyIntro[0].c_pic }" class="introduction_img"/>
				<div class="introduction_cnt">${companyIntro[0].c_intro }</div>
			</div>
			<div class="collaborate">
				<h3 class="collaborate_title">名企合作</h3>
				<h4 class="collaborate_titles">COOPERA</h4>
				<div class="collaborate_img">
					<c:forEach items="${cooperativeList }" var="cl">
						<img src="${cl.c_logo }"/>
					</c:forEach>
				</div>
			</div>
			<div class="course">
				<img src="img/about_us/qyfz.png"/>
			</div>
			<div class="big_shot row">
				<h3 class="big_shot_title">大咖简介</h3>
				<h4 class="big_shot_titles">SYNOPSIS</h4>
				<c:forEach items="${masterList }" var="ml" varStatus="sta">
					<c:choose>
						<c:when test="${sta.index % 2==0 }">
							<div class="big_shot_left">
								<img src="${ml.m_photos }"/>
								<h3>${ml.m_name }</h3>
								<p>${ml.m_intro }</p>
							</div>
						</c:when>
						<c:otherwise>
							<div class="big_shot_right">
								<img src="${ml.m_photos }"/>
								<h3>${ml.m_name }</h3>
								<p>${ml.m_intro }</p>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</body>
</html>
