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
<link rel="stylesheet" type="text/css" href="css/personal_center2.css" />
<script type="text/javascript" src="assets/jquery.min.js"></script>
</head>
<body>
	<div class="center2_mian">
		<h3 class="center2_mian_title">基本信息</h3>
		<div class="center2_mian_tx">
			<span>头像</span> <a href="JavaScript:;"> <img
				src="img/personal_center/tx_2.png" align="center" /> <span
				class="center2_mian_xgtx">修改</span>
			</a>

		</div>
		<div class="center2_mian_yhm row">
			<span>用户名</span>
			<p class="center2_mian_yhm_block">
				<span class="center2_mian_yhm_name">李大仁</span> <span
					class="center2_mian_yhm_xgyhm">修改用户名</span>
			</p>
			<p class="center2_mian_yhm_none">
				<input type="text" />
				<button class="queding">确定</button>
				<button class="quxiao">取消</button>
				<span>用户名作为在网站内的昵称显示，只可修改一次</span>
			</p>
		</div>
		<div class="center2_mian_xb">
			<span>性别</span> <select>
				<option>保密</option>
				<option>男</option>
				<option>女</option>
			</select>
		</div>
		<div class="center2_mian_sr">
			<span>生日</span> <select>
				<option>年</option>
			</select> <select>
				<option>月</option>
			</select> <select>
				<option>日</option>
			</select>
		</div>
		<div class="center1_mian_gxqm">
			<span>个性签名</span>
			<div>
				<textarea placeholder="快来说几句吧，让别人认识你" maxlength="200"></textarea>
				<span class="center1_mian_zishu">最多输入200字</span> <span
					class="center1_mian_baocun">保存</span>
			</div>

		</div>
	</div>
</body>
<script src="js/personal_center2.js"></script>
</html>
