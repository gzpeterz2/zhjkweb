<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/personal_center3.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<div class="center3_mian">
		<h3 class="center3_mian_title">账户安全</h3>
		<div class="center3_mian_bdsj">
			<span>绑定手机</span> <span class="center3_mian_bdsj_xs">没有绑定</span> <span
				class="center3_mian_bdsj_sfbd">绑定手机号</span>
		</div>
		<div class="center3_mian_bdyx">
			<span>绑定邮箱</span> <span class="center3_mian_bdyx_xs ">没有绑定</span> <span
				class="center3_mian_bdyx_sfbd">绑定邮箱</span>
		</div>
		<div class="center3_mian_szmm">
			<span>设置密码</span> <span class="center3_mian_szmm_xs">*******</span> <span
				class="center3_mian_szmm_ts">(设置密码前请先绑定手机)</span> <span
				class="center3_mian_szmm_sfbd">设置登录密码</span>
		</div>
	</div>

	<div class="center3_mian_bdsj_tc">
		<div class="center3_mian_bdsj_tc_cnt">
			<h3 class="center3_mian_bdsj_tc_cnt_title">绑定手机号</h3>
			<p class="center3_mian_bdsj_tc_cnt_sjh">
				<span>手机号：</span> <input type="text" />
			</p>
			<p class="center3_mian_bdsj_tc_cnt_yzm">
				<span>验证码：</span> <input type="text" />
				<button>发送验证码</button>
			</p>
			<button class="center3_mian_bdsj_tc_cnt_fs">发送</button>
		</div>
	</div>
</body>
<script src="js/personal_center3.js"></script>
</html>
