$(function() {
	var login = 1; // 判断用户是否登录 1为登录，其他的为没有登入
	var zan = 0; //
	var numzan = 0 // 回复评论赞

	$(".praise>a").click(function() {
		
		$.post("isLogin.action",function(retdata){
			if (retdata.status == 200) {
				var path = window.location.pathname;
				path = path.substring(17, path.lastIndexOf(".action"));
				$.post("articleThumbup.action?artid="+path, function(data) {
					if (data.status == 200) {
						$(".praise>div").fadeIn(1000).fadeOut(1000);
						var zanshu = parseInt($(".praise>span").text()) + 1;
						$(".praise>span").text(zanshu);
						$(".praise>span").css("color", "#999999")
						zan++;
					} else {
						alert("您给该文章点过赞了!");
					}
				})
			} else {
				alert("请先登录再点赞!");
			}
		})
		
	});
	$(".zan_user").click(function() {
		var zongzan = $(this).text();
		if (login == 1) {
			numzan++;
			if (numzan % 2 == 0) {
				$(this).css({
					"background-image" : "url(img/article/ZAN-1.png)",
					"color" : "#999"
				});
				zongzan--;
				$(this).text(zongzan);
				$(this).append("<div class='comment_on'>点赞成功<div>");
				setTimeout(function() {
					$(".comment_on").remove();

				}, 500)
			} else {
				$(this).css({
					"background-image" : "url(img/article/ZAN-2.png)",
					"color" : "#245fce"
				});
				zongzan++;
				$(this).text(zongzan);
				$(this).append("<div class='comment_on'>点赞成功<div>");
				setTimeout(function() {
					$(".comment_on").remove();

				}, 500)
			}
		} else {
			alert("请登入");
		}

	});

	$(".hf_user")
			.click(
					function() {
						if (login == 1) {
							for (var i = 0; i < $(".reply_cnt li").length; i++) {
								$(".reply_comments").remove();

							}
							var username = $(this).parent().prev().prev().find(
									"span:first-child").html()
							var zishu1 = $(".reply_hfnr textarea").keyup();
							$(".reply_cnt_user").css("height", "200px");
							$(this).parent().parent().parent().css("height",
									"305px");
							$(this)
									.parent()
									.parent()
									.append(
											"<div class='reply_comments'>"
													+ "<img src='img/article/HF-TX.png'>"
													+ "<div class='reply_hfnr'>"
													+ "<p class='hf_name'>回复：<span>"
													+ username
													+ "</span>:</p>"
													+ "<textarea maxlength='10000'></textarea>"
													+ "<p class='hf_zs'>当前已输入<span class='user_ys'>0</span>个字符,您还可以输入<span class='user_sy'>10000</span>个字符</p>"
													+ "</div>"
													+ "<p class='pop_button'><span class='cancel_button'>取消</span><span class='reply_button'>回复</span></p>"
													+

													"<div>");
							$(".reply_hfnr>textarea").css("text-indent",
									$('.hf_name').width() + 5 + "px");

							$(".reply_hfnr textarea")
									.keyup(
											function() {
												$(".user_ys")
														.text(
																$(
																		".reply_hfnr>textarea")
																		.val().length);
												$(".user_sy")
														.text(
																10000 - $(
																		".reply_hfnr>textarea")
																		.val().length)
												// if($(".reply_hfnr>textarea").val().length>345){
												// $(".hf_name").css("display","none")
												// }else{
												// $(".hf_name").css("display","block")
												// }

											});
							$(".pop_button>.cancel_button").click(function() {
								$(".reply_comments").remove();
								$(".reply_cnt>li").css("height", "198px");
							});

							$(".reply_button")
									.click(
											function() {
												$(this)
														.append(
																"<div class='comment_on'>评论成功<div>");
												setTimeout(function() {
													$(".comment_on").remove();
													$(".reply_comments")
															.remove();
													$(".reply_cnt>li").css(
															"height", "198px");
												}, 500)
											})

						} else {
							alert("请登入");
						}
					})
	if (login == 1) {
		$(".go_login").css("display", "none");
	} else {
		$(".go_login").css("display", "block");
	}
	$("#customized-buttonpane").keyup(
			function() {
				var num = 10000 - $("#customized-buttonpane").text().length;
				$(".textnum").html(
						"当前已输入" + $("#customized-buttonpane").text().length
								+ "个字符,您还可以输入" + num + "个字符")
			});
})