<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>师资力量</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/Teachers.css"/>
	</head>
	<body>
		<div class="video-banner">
			<img src="img/teachers/banner.png"/>
		</div>
		<div class="content">
			<div class="c_cnt">
				<p class="title">师资力量</p>
				<c:forEach items="${pageBean.beanList }" var="tl" varStatus="sta">
					<c:choose>
						<c:when test="${sta.index % 2==0 }">
							<div class="cnt_box left">
								<img src="${tl.t_photos }"/>
								<div class="c_right">
									<h3>${tl.t_name }<span>${tl.t_course }</span></h3>
									<p>${tl.t_introduction }</p>
								</div>
								<a href="JavaScript:;"></a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="cnt_box right">
								<img src="${tl.t_photos }"/>
								<div class="c_right">
									<h3>${tl.t_name }<span>${tl.t_course }</span></h3>
									<p>${tl.t_introduction }</p>
								</div>
								<a href="JavaScript:;"></a>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<div class="pages">
				<ul>
					<li><a href="teachers.action?pageCode=1">首页</a></li>
					<c:if test="${pageBean.pageCode!=1 }">
						<li><a href="teachers.action?pageCode=${pageBean.pageCode-1 }"><</a></li>
					</c:if>
					<c:forEach begin="1" end="${pageBean.totalPage }" var="i" >
						<c:choose>
							<c:when test="${i==pageBean.pageCode }">
								<li class="current"><a>${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="teachers.action?pageCode=${i }">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${pageBean.pageCode!=pageBean.totalPage }">
						<li><a href="teachers.action?pageCode=${pageBean.pageCode + 1 }">></a></li>
					</c:if>
					<li><a href="teachers.action?pageCode=${pageBean.totalPage }">尾页</a></li>
				</ul>
			</div>
		</div>
	</body>
</html>
