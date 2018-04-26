<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>学员故事</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/students.css"/>
	</head>
	<body>
		<div class="video-banner">
			<img src="img/students/banner.png"/>
		</div>
		<div class="content">
			<div class="c_cnt">
				<p class="title">学员故事</p>
				<c:forEach items="${pageBean.beanList }" var="bl" varStatus="sta">
					<c:choose>
						<c:when test="${sta.index % 2==0 }">
							<div class="cnt_box s_left">
								<img src="${bl.photos_src }"/>
								<div>
									<p class="s_name"><span>${bl.name }</span><time>${bl.hiredate }</time></p>
									<p class="s_school"><span>毕业院校：</span><span>${bl.graduateschool }</span></p>
									<p class="s_professional"><span>所学专业：</span><span>${bl.career }</span></p>
									<p class="s_company"><span>就职公司：</span><span>${bl.enterprize }</span></p>
									<p class="s_salary"><span>薪资待遇：</span><span>${bl.salary }/月</span></p>
									<p class="s_remarks"><span>学员寄语：</span><span>${bl.sendword }</span></p>
									<a href="student_${bl.id }.action">了解更多</a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="cnt_box s_right">
								<img src="${bl.photos_src }"/>
								<div>
									<p class="s_name"><span>${bl.name }</span><time>${bl.hiredate }</time></p>
									<p class="s_school"><span>毕业院校：</span><span>${bl.graduateschool }</span></p>
									<p class="s_professional"><span>所学专业：</span><span>${bl.career }</span></p>
									<p class="s_company"><span>就职公司：</span><span>${bl.enterprize }</span></p>
									<p class="s_salary"><span>薪资待遇：</span><span>${bl.salary }/月</span></p>
									<p class="s_remarks"><span>学员寄语：</span><span>${bl.sendword }</span></p>
									<a href="student_${bl.id }.action">了解更多</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<div class="pages">
				<ul>
					<li><a href="students.action?pageCode=1">首页</a></li>
					<c:if test="${pageBean.pageCode!=1 }">
						<li><a href="students.action?pageCode=${pageBean.pageCode-1 }"><</a></li>
					</c:if>
					<c:forEach begin="1" end="${pageBean.totalPage }" var="i" >
						<c:choose>
							<c:when test="${i==pageBean.pageCode }">
								<li class="current"><a>${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="students.action?pageCode=${i }">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${pageBean.pageCode!=pageBean.totalPage }">
						<li><a href="students.action?pageCode=${pageBean.pageCode + 1 }">></a></li>
					</c:if>
					<li><a href="students.action?pageCode=${pageBean.totalPage }">尾页</a></li>
				</ul>
			</div>
			
		</div>
	</body>
</html>
