<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./include.inc.jsp"%>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".icon-search").click(function() {
							$(".search-area.min").css("width", "200px")
						})
						loginwidth()
						function loginwidth() {
							var text = $(".header-signin").attr("data-text");
							if (text != null && text != ''
									&& text == "${user.u_account}") {
								$(".header-signin a").first().attr("style",
										"width:145px;");
								$(".header-signin a").first().attr("href", "");
								var msg = "<a href='${pageContext.request.contextPath}/user/logout' class='logout' style='color:#fff;display:none;width:145px;background:#ec1500'>退出</a>";
								$(".header-signin a").first().append(msg);
							}

						}
						$(".header-signin a").first().hover(function() {
							$(".logout").css("display", "block");
						}, function() {
							$(".logout").css("display", "none");
						});
					});
</script>
<body id="index">
	<div id="header">
		<div class="page-container" id="nav">
			<div id="logo" class="logo">
				<a target="_self" class="hide-text" style=""></a>
			</div>


			<button type="button"
				class="navbar-toggle visible-xs-block js-show-menu">
				<i class="icon-menu"></i>
			</button>
			<ul class="nav-item">
				<li class="set-btn visible-xs-block"><a href="#">登录</a> / <a
					href="register.jsp">注册</a></li>
				<li><a href="${pageContext.request.contextPath}/course/list?currentpage=0"
					target="_self">课程</a></li>
				<li><a href="" target="_self">实战<i class="icn-new"></i></a></li>
				<li><a href="" target="_self">计划</a></li>
				<li><a href="" target="_self">猿问</a></li>
				<li><a href="" target="_self">手记</a></li>

			</ul>

			<div id="login-area">
				<ul class="header-unlogin clearfix">
					<li class="header-signin" data-text="${user.u_account}"><a
						href="${pageContext.request.contextPath}/user/login"
						id="js-signin-btn"> <c:if test="${user.u_account==null}">
						登录
						</a></li>
					<li class="header-signup"><a
						href="${pageContext.request.contextPath}/user/register"
						id="js-signup-btn">注册</a></li>
					</c:if>

					<c:if test="${user.u_account!=null}">
						${user.u_account}
						</a>
						</li>
					</c:if>
					<li class="header-signin" data-text="${user.u_account}"><a
						href="${pageContext.request.contextPath}/right/vip"
						id="js-signin-btn">
						vip权益
						</a></li>

				</ul>
			</div>

			<div class="search-warp clearfix"
				style="min-width: 32px; height: 60px;">
				<div class="search-area min" data-search="top-banner">
					<input class="search-input" data-suggest-trigger="suggest-trigger"
						placeholder="请输入想搜索的内容..." type="text" autocomplete="off">
					<input type="hidden" class="btn_search"
						data-search-btn="search-btn">
					<ul class="search-area-result" data-suggest-result="suggest-result">
					</ul>
				</div>
				<div class="showhide-search" data-show="no">
					<i class="icon-search"></i>
				</div>
			</div>
		</div>
	</div>