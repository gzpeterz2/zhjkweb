<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<script src="js/jquery.min.js"></script>
<script src="js/login.js"></script>
</head>
<body>
	<div class="mian">
		<div class="mian_content row">
			<div class="mian_content_img">
				<img src="img/login/LOGO.png" /> <img src="img/login/A.png" />
			</div>
			<div class="mian_content_cnt">
				<div class="tab">
					<span>账号登录</span> <span class="bj_color">手机快捷登录</span>
				</div>
				<div class="zhdl">
				<form id="loginform">
					<p class="tishi">
						<img src="img/login/cw.png" align="center" />用户不存在或密码不正确
					</p>
					<div class="user_name">
						<span class="user_img"> <img src="img/login/dl.png" alt="" />
						</span> <input type="text" name="u_code" placeholder="手机号/用户名/邮箱" />
					</div>
					<div class="user_password">
						<span class="user_img"> <img src="img/login/suo.png" alt="" />
						</span> <input type="password" name="u_password" placeholder="密码" />
					</div>
					<p class="user_interlinkage row">
						<a href="register.html" class="ljzc">立即注册</a> <a
							href="newpassword.html" class="wjmm">忘记密码？</a>
					</p>
					<div class="user_bnt_login">立即登录</div>
					<div class="user_qtfsdl">
						<span>其他方式登录：</span> <img src="img/login/wx.png" align="center" />
						<img src="img/login/qq.png" align="center" /> <img
							src="img/login/wb.png" align="center" />
					</div>
				</form>
				</div>
				<div class="sjkjdl">
					<p class="tishi">
						<img src="img/login/cw.png" align="center" />用户不存在或密码不正确
					</p>
					<div class="user_name">
						<span class="user_img"> <img src="img/login/sj.png" />
						</span> <input type="text" onkeyup="value=value.replace(/[^\d]/g,'')"
							maxlength="11" placeholder="请输入绑定手机号码" />
					</div>
					<div class="user_password">
						<span class="user_img"> <img src="img/login/mm.png" alt="" />
						</span> <input type="password" placeholder="密码" />
					</div>
					<div class="trends_password row">
						<div>
							<span><img src="img/login/suo.png" /></span> <input type="text"
								placeholder="请输入手机动态码" />
						</div>
						<button>获取动态码</button>
					</div>
					<div class="user_bnt_login mar-bttom">立即登录</div>
					<div class="user_qtfsdl row">
						<span>其他方式登录：</span> <img src="img/login/wx.png" align="center" />
						<img src="img/login/qq.png" align="center" /> <img
							src="img/login/wb.png" align="center" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>