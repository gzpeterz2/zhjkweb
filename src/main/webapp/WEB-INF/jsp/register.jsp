<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
</head>
<body>
	<div class="mian">
		<div class="mian_content row">
			<div class="mian_content_img">
				<img src="img/login/LOGO.png" /> <img src="img/login/A.png" />
			</div>
			<div class="mian_content_cnt register_mian">
				<h3 class="register_mian_title">新用户注册</h3>
				<div class="one">
					<span class="user_img"> <img src="img/login/sj.png" alt="" />
					</span> <input type="text" onkeyup="value=value.replace(/[^\d]/g,'')"
						maxlength="11" placeholder="请输入手机号码" />
				</div>
				<div class="one">
					<span class="user_img"> <img src="img/login/mm.png" alt="" />
					</span> <input type="text" placeholder="请输入6~32位密码" />
				</div>
				<div class="one">
					<span class="user_img"> <img src="img/login/邮箱.png" alt="" />
					</span> <input type="text" placeholder="E-mail" />
				</div>
				<div class="yzm row">
					<div>
						<span><img src="img/login/suo.png" /></span> <input type="text"
							placeholder="请输入手机验证码" />
					</div>
					<button>获取验证码</button>
				</div>
				<div class="user_bnt_login mar-bttom">立即注册</div>

				<div class="user_qtfsdl row">
					<span>其他方式登录：</span> <img src="img/login/wx.png" align="center" />
					<img src="img/login/qq.png" align="center" /> <img
						src="img/login/wb.png" align="center" />
				</div>
				<p class="yyzh">
					已有账号？<a href="JavaScript:;">立即登录</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>