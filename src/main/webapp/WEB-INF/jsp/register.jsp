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
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<div class="mian">
		<div class="mian_content row">
			<div class="mian_content_img">
				<img src="img/login/LOGO.png" /> <img src="img/login/A.png" />
			</div>
			<div class="mian_content_cnt register_mian">
				<h3 class="register_mian_title">新用户注册</h3>
				<form action="register.action" method="post" id="registerform">
				<div class="one">
					<span class="user_img"> <img src="img/login/sj.png" alt="" />
					</span> <input type="text" name="u_code" id="webuser" maxlength="16" placeholder="请输入账号 不要超过16个字符" />
					<span id="webuserwarning" style="color:red;font-size:14px"></span>
				</div>
				<div class="one">
					<span class="user_img"> <img src="img/login/mm.png" alt="" />
					</span> <input type="password" name="u_password" id="password" maxlength="16" placeholder="请输入6~16位密码" />
					<span id="passwordwarning" style="color:red;font-size:14px"></span>
				</div>
				<div class="one">
					<span class="user_img"> <img src="img/login/邮箱.png" alt="" />
					</span> <input id="mail" name="u_email" type="text" placeholder="E-mail 请输入您的验证邮箱" />
					<span id="mailwarning" style="color:red;font-size:14px" ></span>
				</div>
				<div class="yzm row">
					<div>
						<span><img src="img/login/suo.png" /></span> <input type="text" id="validate"
							placeholder="请输入邮件中的验证码" maxlength="6" />
							<span  id="validatewarning" style="color:red;font-size:14px;"></span>
					</div>
					<button type="button" id="getvalidate">获取验证码</button>
				</div>
				<div class="user_bnt_login mar-bttom" id="register">立即注册</div>
				</form>
				<script type="text/javascript">
					$(function(){
						var flag1 = 0;
						var flag2 = 0;
						
						$("#webuser").change(function(){
							$("#webuserwarning").html("");
						});
						$("#password").change(function(){
							$("#passwordwarning").html("");
						});
						$("#mail").change(function(){
							$("#mailwarning").html("");
						});
						$("#validate").change(function(){
							$("#validatewarning").html("");
						});
						
						$("#webuser").blur(function(){
							var webuser = $("#webuser").val();
							$.post("iswebuserexist.action?webuser="+webuser,function(result){
								if (result.status != 200) {
									$("#webuserwarning").html("该用户名已被占用!");
									flag1 = 1;
								}else{
									flag1 = 0;
								}
							});
							
						});
						$("#mail").blur(function(){
							var mail = $("#mail").val();
							$.post("ismailexist.action?mail="+mail,function(result){
								if (result.status != 200) {
									$("#mailwarning").html("该邮箱已被占用!");
									flag2 = 1;
								}else {
									flag2 = 0;
								}
								
							});
							
						});
						
						
						
						$("#register").click(function(){
							if (flag1 == 1 || flag2 == 1) {
								
								return;
							}
							var flag = 0;
							var webuser = $("#webuser").val();
							var password = $("#password").val();
							var mail = $("#mail").val();
							var validate = $("#validate").val();
							
							if (webuser == "") {
								$("#webuserwarning").html("用户名不能为空!");
								flag = 1;
							}
							if (password == "") {
								$("#passwordwarning").html("密码不能为空!");
								flag = 1;
							}
							var zmnumReg=/^[0-9a-zA-Z]*$/; 
							if (password!=""&&!zmnumReg.test(password)) {
								$("#passwordwarning").html("密码只能是数字和英文组成!");
								flag = 1;
							}
							
							
							if (mail == "") {
								$("#mailwarning").html("邮箱不能为空!");
								flag = 1;
							}							
							var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
							if (mail != ""&&!myreg.test(mail) ) {
								$("#mailwarning").html("邮箱格式错误!");
								flag = 1;
							}
							
							if (validate == "") {
								$("#validatewarning").html("验证码不能为空!");
								flag = 1;
							}
							if (flag == 1) {
								return;
							}
							
							if (flag == 0) {
							
								
								$.post("isvalidateright.action?validate="+validate+"&mail="+mail,function(result){
									if (result.status != 200) {
										$("#validatewarning").html("验证码错误!");
										flag = 1;
										return;
									}else {
										$("#registerform").submit();
									}
									
								});
								
								
								
							}
							
							
						});
						
						
						$("#getvalidate").click(function(){
							if (flag2 == 1) {
								return;
							}
							var mail = $("#mail").val();
							if (mail == "") {
								$("#mailwarning").html("邮箱不能为空!");
								return;
							}
							var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
							if (mail != ""&&!myreg.test(mail) ) {
								$("#mailwarning").html("邮箱格式错误!");
								return;
							}
							$.post("getvalidate.action?mail="+mail,function(result){
								if (result.status == 200) {
									$("#mailwarning").html("验证邮件发送成功");
								} else {
									$("#mailwarning").html("验证邮件发送失败");
								}
								
							}); 
							
						});
						
						
						
						
					});
					
					
					
				
				</script>

				<div class="user_qtfsdl row">
					<span>其他方式登录：</span> <img src="img/login/wx.png" align="center" />
					<img src="img/login/qq.png" align="center" /> <img
						src="img/login/wb.png" align="center" />
				</div>
				<p class="yyzh">
					已有账号？<a href="tologin.action">立即登录</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>