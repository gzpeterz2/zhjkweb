<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="zhihaijiangku"/>
		<meta name="keywords" content="知海匠库，zhihaijaingku，zhjk，海辰，haichen，hc，海辰科技，haichenkeji，hckeji，海南海辰，hainanhaichen，hnhc"/>
		<meta name="author" content="1172"/>	
		<title>知海匠库</title>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/link-common.js" ></script>
		<script type="text/javascript" src="js/home.js"></script>
		<script type="text/javascript" src="js/studentlist.js"></script>
		<link rel="stylesheet" type="text/css" href="css/home.css"/>
		<link rel="stylesheet" type="text/css" href="css/base.css"/>
	</head>
	<body>
		<div class="video-banner">
			<ul class="banner_items">
				<!--<li class="xianshi"><img src="img/home/3.png"/><a href="JavaScript:;"></a></li>-->
				<li class="xianshi" ><img src="${homePage.bigBanner1.src}"/><a href="h5.html"></a></li>
				<li ><img src="${homePage.bigBanner2.src}"/><a href="java.html"></a></li>
				<li ><img src="${homePage.bigBanner3.src}"/><a href="${homePage.bigBanner2.url}"></a></li>
			</ul>
			<ul class="banner_lists">
				<li class="bg_color"></li>
				<!--<li></li>-->
				<li></li>
				<li></li>
			</ul>
			<span class="prev">&lt;</span>
			<span class="next">&gt;</span>
			
		</div>
		<div class="mian">
			<div class="recommend_mian">
				<div class="recommend">
				<div class="recommend_one">
					<div><img src="img/home/mbx_1.png"/><a href="h5.html" target="_blank"></a></div>
					<div><img src="img/home/mbx_2.png"/><a href="ui.html" target="_blank"></a></div>
					<div><img src="img/home/mbx_3.png"/><a href="java.html" target="_blank"></a></div>
				</div>
				<div class="recommend_two">
					<div class="college">
						<p class="recommend_two_title">
							<span>学院动态</span>
							<a href="dynamic.html">更多&gt;</a>
						</p>
						<div class="recommend_two_cnt">
							<div class="cnt_left">
								<a href="details.html">
									<img src="img/home/dt_1.png"/>
									<p>知海匠库互联网学院再添分校</p>
								</a>
							</div>
							<div class="cnt_right">
								<ul>
									<li><a href="details.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="details.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="details.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="details.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="details.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="community">
						<p class="recommend_two_title">
							<span>社区动态</span>
							<a href="community_log.html">更多&gt;</a>
						</p>
						<div class="recommend_two_cnt">
							<div class="cnt_left">
								<a href="article.html">
									<img src="img/home/dt_2.png"/>
									<p>知海匠库互联网学院再添分校</p>
								</a>
							</div>
							<div class="cnt_right">
								<ul>
									<li><a href="article.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="article.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="article.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="article.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
									<li><a href="article.html" target="_blank">【圣诞大狂欢】知海匠库沙滩Party放飞自我</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 精品教学视频  -->
				<div class="recommend_three">
					<p class="recommend_three_title">
						<span>精品教学视频</span>
						<a href="${pageContext.request.contextPath }/video.action" target="_blank">更多&gt;</a>
					</p>
					<div class="recommend_three_cnt">
						<c:forEach items="${videoList }"  var="video">
						<div>
							<img src="http://localhost:8080/${video.v_cover} "/>
							<p>${video.v_title}</p>
							<span id="online"><img src="img/home/TX.png" />1286人在学习</span>
							<a href="${pageContext.request.contextPath }/video/${video.v_id }.action" target="_blank"></a>
						</div>
						</c:forEach>
												
					</div>
				</div>
				
				
			</div>
			
			</div>
			
			<div class="concept">
				<img src="img/home/hy_bj.png"/>
				<div class="concept_cnt">
					<h1 class="concept_cnt_title">行业领先的教学理念</h1>
					<p>易友会企业成员，按网易标准培养IT人才，顶级项目实战+就业资源助你实现高薪梦想</p>
					<div class="cnt_img">
						<div class="cnt_img_yi">
							<div>
								<img src="img/home/hy_icon1.png"/>
								<p class="concept_title">网易系管理团队</p>
								<p class="concept_text">易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员</p>
							</div>
							<a href="JavaScript:;"></a>
						</div>
						<div class="cnt_img_you">
							<div>
								<img src="img/home/hy_icon2.png"/>
								<p class="concept_title">企业级实战项目+理论</p>
								<p class="concept_text">易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员</p>
							
							</div>
							<a href="JavaScript:;"></a>
						</div>
						<div class="cnt_img_hui">
							<div>
								<img src="img/home/hy_icon3.png"/>
								<p class="concept_title">名企就业资源</p>
								<p class="concept_text">易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员易友会企业成员,易友会企业成员</p>
							
							</div>
							<a href="JavaScript:;"></a>
						</div>
						
					</div>
				</div>
			</div>
			<div class="way">
				<div class="way_cnt">
					<h1 class="title">我们向往的<span>生活、学习、工作</span>方式</h1>
					<p class="titles">知海匠库学习基地位于海南生态软件园<br/>国家级生态软件园基地、给你最好的学习基地</p>
					<div class="rsc">
						<!--<img src="img/home/rjy_logo.png"/>-->
						<p>海南生态软件园是海南 "一岛一区" 省级战略园区、是海南发展互联网产业的重要载体和平台。这是一座花园办公、高知社区、商业娱乐、教育医疗为一体的互联网微城市。入住园区的互联网企业达600余家、包括腾讯、华为、百度等互联网大佬企业。8-15分钟的生活圈让学员轻松平衡学习生活；高端互联网交流圈让学员有机会接触互联网技术大咖、学习更多行业知识和经验。</p>
					</div>
					<div class="way_img">
						<img src="img/home/hj_aa.png"/>
						<div class="special_button">
							<a href="JavaScript:;">想看更多环境</a>
							<span href="JavaScript:;">想看更多环境</span>
						</div>
					</div>
				</div>
			</div>
			<div class="bat">
				<img src="img/home/bat_bj.png"/>
				<div class="bat_cnt">
					<h1 class="title">从这里出发 , BAT不再是梦</h1>
					<p class="titles">独特1+3+0.5 开创互联网人才培养新模式、各大名企都有我们知海人的身影</p>
					<div class="bat_img">
						<img src="img/home/pic17.png"/>
						<div class="special_button">
							<a href="JavaScript:;">了解更多关于他们的故事</a>
							<span>了解更多关于他们的故事</span>
						</div>
					</div>
				</div>
			</div>
			<div class="growth">
				<img src="img/home/qiu_1.png"/>
				<div class="growth_cnt">
					<h1 class="title">从<span>无到有</span> , 茁壮成长</h1>
					<p class="titles">往届知海人都各自找到了自己满意的工作 , 现在的收入往往是以前所不敢想的<br />而这些 , 仅仅是他们的起点</p>
					<div class="list">
						<table>
							<thead>
								<tr>
									<td class="name">姓名</td>
									<td class="xl">学历</td>
									<td class="rzqy">入职企业</td>
									<td class="xz">薪资</td>
									<td class="zy">职业</td>
								</tr>
							</thead>
							<tbody class="job_list">
								<!--<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>7000</td>
									<td>UID设计</td>
								</tr>
								<tr>
									<td>李*华</td>
									<td>本科</td>
									<td>广州筷**科技</td>
									<td>8000</td>
									<td>UID设计</td>
								</tr>-->
							</tbody>
						</table>
					</div>
				</div>
				<div class="special_button">
					<a href="JavaScript:;">了解更多行情</a>		
					<span>了解更多行情</span>
				</div>
			</div>
			<div class="security">
				<img src="img/home/RY_BJ.png"/>
				<div class="security_cnt">
					<h1 class="title">软硬兼施 ,让你的成功更有保障</h1>
					<p class="titles">知海匠库独特的教学理念加上负责用心的大咖队伍 ,自制力差、学不会这些都不存在</p>
					<div class="security_img">
						<img src="img/home/RY_R_1.png" class="r1"/>
						<img src="img/home/RY_R_2.png" class="r2"/>
						<img src="img/home/RY_R_3.png" class="r3"/>
						<img src="img/home/RY_R_4.png" class="r4"/>
						<img src="img/home/RY_R_5.png" class="r5"/>
						<img src="img/home/RY_Y_1.png" class="y1"/>
						<img src="img/home/RY_Y_2.png" class="y2"/>
						<img src="img/home/RY_Y_3.png" class="y3"/>
						<img src="img/home/RY_Y_4.png" class="y4"/>
						<img src="img/home/RY_Y_5.png" class="y5"/>
					</div>
					<div class="special_button">
						<a href="JavaScript:;" class="bm">&nbsp;&nbsp;&nbsp;立刻报名&nbsp;&nbsp;&nbsp;</a>
						<span class="bg">&nbsp;&nbsp;&nbsp;立刻报名&nbsp;&nbsp;&nbsp;</span>
					</div>
					<div class="special_button">
						<a href="JavaScript:;">还担心学不会</a>
						<span>还担心学不会</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
