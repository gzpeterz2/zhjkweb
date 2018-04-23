<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>视频详情</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/video_details.css"/>

	
</head>
	<body>
		<div class="mian">
			<div class="mian_cnt">
				<p class="mian_cnt_title"><a href="index.action">首页</a> &gt; <a href="video.action">精品视频</a> &gt; <a href="#">${video.v_title }</a></p>
				<div class="mian_cnt_header">
					<img src="img/video_details/sp_jpg1.png"/>
					<div class="mian_cnt_header_right">
						<h3 class="right_topic">${video.v_title }</h3>
						<p class="right_speaker">主讲:<span>${video.v_teacher }</span></p>
						<p class="right_explain">${video.v_desc }</p>
						<p class="tag"><span>${video.v_type }</span></p>
						<p class="right_btn">
							<a href="JavaScript:;">免费学习</a>
							<a href="JavaScript:;">立即报名</a>
						</p>
					</div>
				</div>
				<div class="content row">
					<div class="content_left">
						<h3 class="tab row">
							<span class="tab_one bot_line">课程详情</span>
							<span class="tab_two">课程目录</span>
							<a href="JavaScript:;"><img src="img/video_details/WB.png"/></a>
							<a href="JavaScript:;"><img src="img/video_details/WX.png"/></a>
							<a href="JavaScript:;"><img src="img/video_details/QQ.png"/></a>
							
						</h3>
						<div class="k_details">
							${video.v_describe }
						</div>
						<div class="k_catalogue">
							<ul>
								<li>
									1.Cross device use跨设备的设计体系 <time>19:50</time>
									<a href="JavaScript:;"></a>
								</li>
								<li>
									1.Cross device use跨设备的设计体系 <time>19:50</time>
									<a href="JavaScript:;"></a>
								</li>
								<li>
									1.Cross device use跨设备的设计体系 <time>19:50</time>
									<a href="JavaScript:;"></a>
								</li>
								<li>
									1.Cross device use跨设备的设计体系 <time>19:50</time>
									<a href="JavaScript:;"></a>
								</li>
								<li>
									1.Cross device use跨设备的设计体系 <time>19:50</time>
									<a href="JavaScript:;"></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="content_right">
						<h3 class="teacher">主讲老师</h3>
						<div class="teacher_text">
							<div class="teacher_text_cnt row">
								<img src="img/video_details/sp_tx.png"/>
								<div>
									<p>${video.v_teacher }</p>
									<p>知海匠库互联网讲师</p>
								</div>
							</div>
							<p>
								全球设计公司visual&interaction designer,任职于palo alto总部，熟悉硅谷软件产品的开发及最新技术流行趋势。
							</p>
						</div>
					</div>
				</div>			
			</div> 
		</div>
	</body>
	<script src="js/video_details.js"></script>
</html>