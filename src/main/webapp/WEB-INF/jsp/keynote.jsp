<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>发表主题</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/link-co-common.js"></script>
<link rel="stylesheet" type="text/css" href="css/keynote.css" />
<link rel="stylesheet" href="assets/design/css/trumbowyg.css">
<script src="assets/jquery.min.js"></script>
<script src="assets/trumbowyg.js"></script>
<script src="assets/plugins/base64/trumbowyg.base64.js"></script>
<script src="assets/plugins/upload/trumbowyg.upload.js"></script>
</head>
<body>
	<div class="mian">
		<div class="content">
			<p class="title">
				<a href="#">知海社区</a>&gt;<a href="#">发表主题</a>
			</p>
			<div class="cnt_left">
				<form id="articleform" action="keynotesubmit.action" method="post">
					<p class="published">发表主题</p>
					<input type="text" name="title" class="headline"
						placeholder="请在此输入标题，最多35中文字长度" /> <input type="file"
						accept="image/jpeg,image/png" class="cover" id="imgfile" /> <label
						for="imgfile" class="coverlable">上传封面图像</label> <span
						class="lb_prompt" id="uploadret">封面为420*260像素的 PNG/JPG/GIF 格式图片</span>
					<div class="cnt_cnt">
						<div id="odiv"
							style="display: none; position: absolute; z-index: 100;">
							<img src="assets/pic/sx.png" title="缩小" border="0" alt="缩小"
								onclick="sub(-1);" /> <img src="assets/pic/fd.png" title="放大"
								border="0" alt="放大" onclick="sub(1)" /> <img
								src="assets/pic/cz.png" title="重置" border="0" alt="重置"
								onclick="sub(0)" /> <img src="assets/pic/sc.png" title="删除"
								border="0" alt="删除" onclick="del();odiv.style.display='none';" />
						</div>
						<div onmousedown="show_element(event)" style="clear: both"
							id="customized-buttonpane" class="editor"></div>
						<textarea rows="" cols="" hidden="hidden" id="content"
							name="content"></textarea>
						<p class="textnum">当前已输入0字符,您还可以输入9993个字符</p>
					</div>
					<div class="plate">
						发表板块： <input type="radio" id="zyfx" checked="checked" name="type"
							value="resource" /><label for="zyfx"></label><span>资源分享</span> <input
							type="radio" id="jsjl" name="type" value="technology" /><label
							for="jsjl"></label><span>技术交流</span> <input type="radio"
							id="zxhd" name="type" value="new" /><label for="zxhd"></label><span>最新活动</span>
					</div>
					<input type="hidden" name="cover" id="cover">
					<input type="hidden" name="author" value="${user.u_name }">
					<a href="JavaScript:;" class="issue" id="subbtn">发布</a>
				</form>

				<script type="text/javascript">
					$(function() {
						$("#imgfile").change(function(){
							var formData = new FormData();
							var name = $("#imgfile").val();
							formData.append("file", $("#imgfile")[0].files[0]);
							formData.append("name", name);
							$.ajax({
								url : "uploadpic.action",
								type : 'POST',
								data : formData,
								// 告诉jQuery不要去处理发送的数据
								processData : false,
								// 告诉jQuery不要去设置Content-Type请求头
								contentType : false,
								beforeSend : function() {
									console.log("正在进行，请稍候");
								},
								success : function(responseStr) {
									if (responseStr.status == 200) {
										$("#uploadret").html("恭喜您，封面上传成功!");
										$("#cover").val(responseStr.data);
										console.log("成功" + responseStr);
									} else {
										console.log("失败");
									}
								},
								error : function(responseStr) {
									console.log("error");
								}
							});
							
							
						});
						
						

						$("#subbtn").click(function() {
							
							$("#content").html($("#customized-buttonpane").html());
							
							$("#articleform").submit();
						});
					});
				</script>


			</div>

			<div class="cnt_right">
				<h3>资源分享</h3>
				<ul class="hot_list">
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>
					<li><a href="JavaScript:;">网页UI--css3实现多边形布局</a></li>

				</ul>
			</div>
		</div>

	</div>
</body>
<script src="js/keynote.js"></script>
</html>