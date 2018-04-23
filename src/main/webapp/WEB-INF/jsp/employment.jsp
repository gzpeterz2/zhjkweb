<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>就业详情</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/employment.css"/>
		<link rel="stylesheet" type="text/css" href="css/base.css"/>
		<!--<script src="js/employment.js"></script>-->

	</head>
	<body>
		<div class="video-banner">
			<img src="img/employment/jyhq_qtbanner.png"/>
		</div>
		<div class="employment-mian">
			<div class="content">
				<div class="content_header">
					<h1>我们只做<span>良心教育</span></h1>
					<p>收到offer那一刻，他们立刻将自己的喜悦分享给我们，而我们也衷心的替他们感到高兴 </p>
				</div>
				<div class="shuffling">
					<span class="prev"></span>
					<span class="next"></span>
				    <div class="box-con">
						<ul>
							<c:forEach items="${chatlist }" var="cl">
								<li><img src="${cl.c_src }" /></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				
				
				<!--<div class="more">
					
					<img src="img/employment/JP_AN.png"/>-->
					<div class="special_button">
						<a href="JavaScript:;">想看更多截图</a>
						<span id="">想看更多截图</span>
					</div>
				<!--</div>-->
			</div>
			
			<div class="market">
				<h1>知海真实就业行情</h1>
				<p>全部就业信息透明公开，他们的顺利就业离不开自己的努力，也同样离不开知海的良苦用心</p>
				<div class="job">
					<table>
						<thead>
							<tr>
								<td>姓名</td>
								<td>学历</td>
								<td>入职公司</td>
								<td>薪资</td>
								<td>职业</td>
								<td>就职信息</td>
							</tr>
						</thead>
						<tbody class="job_list">
						<c:forEach items="${studentlist }" var="sl">
							<tr>
								<td>${sl.name }</td>
								<td>${sl.degree }</td>
								<td>${sl.enterprize }</td>
								<td>${sl.salary }</td>
								<td>${sl.career }</td>
								<td>${sl.hiredate }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/employment.js" ></script>
</html>