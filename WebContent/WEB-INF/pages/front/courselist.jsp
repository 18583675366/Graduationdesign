<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>课程列表首页</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta http-equiv="Cache-Control" content="no-transform ">

<meta name="Keywords" content="">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/courselist.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/newindex.css"
	type="text/css">
<script
	src="${pageContext.request.contextPath}/front/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
</head>
<%@ include file="../../header.jsp"%>
</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						ajax("${pageContext.request.contextPath}/course/tolist?currentpage=0");
						pagetotal("${page.pagecount}")
						$(".course-nav-item")
								.click(
										function() {
											var subHref = $(this).children("a")
													.attr('data-href');
											var sup = $(this).children("a")
													.attr('data-super');
											var flsg = false;
											if (typeof (sup) == "undefined") {

												$(".all a")
														.attr(
																"data-href",
																$(this)
																		.children()
																		.attr(
																				"data-href"));
												flsg = false;
												if ($(this).html() != $(".all")
														.html()) {
													$(".course-nav-item ")
															.removeClass("on");
													$(this).addClass("on");
												} else {

													$(".course-nav-item  a")
															.each(
																	function() {
																		if (typeof ($(this)
																				.attr('data-super')) != "undefined") {
																			$(
																					this)
																					.parent()
																					.removeClass(
																							"on");
																		}
																	});

													$(this).addClass("on");
												}

											} else {

												flsg = true;
											}
											console.log(subHref);

											ajax(subHref, flsg);
											return false;
										});
						function ajax(subHref, flsg) {
							$
									.ajax({
										//提交数据的类型 POST GET
										type : "POST",
										//提交的网址
										url : subHref,
										 
										//提交的数据
										//返回数据的格式
										success : function(data) {
											$(".js-course-lists ul").children()
													.remove();
											for (var i = 0; i < data.length; i++) {
												if (flsg) {
													getbyremark(data[i].vl_remarks);
												}
												if (data[i].vl_isend == 0) {
													var html = "<li class='course-one'><a target='_self'><div class='course-list-img'><img width='240'height='135' alt='"+data[i].vl_name+"'src='${pageContext.request.contextPath}/front/img/529dc3380001379906000338-240-135.jpg'></div><h5><span>"
															+ data[i].vl_name
															+ "</span></h5><div class='tips'><p class='text-ellipsis'>"
															+ data[i].vl_describe
															+ "</p><span class='l' >更新未完毕</span> <span class='l ml20'>329037 人学习</span></div> <span class='time-label'> 5小时 | 初级 </span> <b class='follow-label'>"
															+ data[i].vl_keyword
															+ "</b></a></li>";
												} else {
													var html = "<li class='course-one'><a target='_self'><div class='course-list-img'><img width='240'height='135' alt='"+data[i].vl_name+"'src='${pageContext.request.contextPath}/front/img/529dc3380001379906000338-240-135.jpg'></div><h5><span>"
															+ data[i].vl_name
															+ "</span></h5><div class='tips'><p class='text-ellipsis'>"
															+ data[i].vl_describe
															+ "</p><span class='l '>更新完毕</span> <span class='l ml20'>329037 人学习</span></div> <span class='time-label'> 5小时 | 初级 </span> <b class='follow-label'>"
															+ data[i].vl_keyword
															+ "</b></a></li>";

												}

												$(".js-course-lists ul")
														.append(html)
												console.log(data[i].vl_keyword)
											}
										},
										//调用出错执行的函数
										error : function() {
											//请求出错处理
											alert("异常")
										}
									});

						}
						function ajax(path){
							$
							.ajax({
								//提交数据的类型 POST GET
								type : "get",
								//提交的网址
								url : path,
								//提交的数据
								//返回数据的格式
								success : function(data) {
									$(".js-course-lists ul").children()
											.remove();
									for (var i = 0; i < data.length; i++) {
										if (data[i].vl_isend == 0) {
											var html = "<li class='course-one'><a target='_self'><div class='course-list-img'><img width='240'height='135' alt='"+data[i].vl_name+"'src='${pageContext.request.contextPath}/front/img/529dc3380001379906000338-240-135.jpg'></div><h5><span>"
													+ data[i].vl_name
													+ "</span></h5><div class='tips'><p class='text-ellipsis'>"
													+ data[i].vl_describe
													+ "</p><span class='l' >更新未完毕</span> <span class='l ml20'>329037 人学习</span></div> <span class='time-label'> 5小时 | 初级 </span> <b class='follow-label'>"
													+ data[i].vl_keyword
													+ "</b></a></li>";
										} else {
											var html = "<li class='course-one'><a target='_self'><div class='course-list-img'><img width='240'height='135' alt='"+data[i].vl_name+"'src='${pageContext.request.contextPath}/front/img/529dc3380001379906000338-240-135.jpg'></div><h5><span>"
													+ data[i].vl_name
													+ "</span></h5><div class='tips'><p class='text-ellipsis'>"
													+ data[i].vl_describe
													+ "</p><span class='l '>更新完毕</span> <span class='l ml20'>329037 人学习</span></div> <span class='time-label'> 5小时 | 初级 </span> <b class='follow-label'>"
													+ data[i].vl_keyword
													+ "</b></a></li>";

										}

										$(".js-course-lists ul").append(
												html)
										console.log("${page.pagecount}");
										
										console.log(data[i].vl_keyword)
									}
								},
								//调用出错执行的函数
								error : function() {
									//请求出错处理
									alert("异常")
								}
							});
						}
						function getbyremark(remark) {
							$(".course-nav-item  a")
									.each(
											function() {
												var id = $(this)
														.attr("data-id");
												if (id == remark) {
													$(".course-nav-item ")
															.removeClass("on");
													$(this).parent().addClass(
															"on");
													var supid = $(this).attr(
															"data-super");
													$(".all a").attr(
															"data-href",
															$(this)

															.attr("data-href"));
													$(".course-nav-item  a")
															.each(
																	function() {
																		var seid = $(
																				this)
																				.attr(
																						"data-id");
																		if (seid == supid) {

																			$(
																					this)
																					.parent()
																					.addClass(
																							"on");
																			$(
																					".all a")
																					.attr(
																							"data-href",
																							$(
																									this)

																									.attr(
																											"data-href"));

																			console
																					.log($(
																							this)

																							.attr(
																									"data-href"))
																		}
																	});
												}
											});
							console.log(remark);
						}
						//生成分页的数目
						function pagetotal(pagetotal) {
							if(pagetotal<=7){
							var j = pagetotal - 1;
							for (var i = pagetotal; i >= 2; i--) {

								var html = "<a data-href='${pageContext.request.contextPath}/course/tolist?currentpage="
										+ j + "'>" + i + "</a>";
								$(".page .active").after(html);
								j--;
							}
						}
						}
						$(".page a").click(function(){
							var subHref = $(this)
							.attr('data-href');$(".page a").removeClass("active");
							$(this).addClass("active");
							 window.history.pushState({},0,'http://'+window.location.host+'/'+subHref); 
							ajax(subHref);
						})

					});
</script>
<body>
	<div id="main">
		<div class="container">
			<div class="course-content">
				<div class="course-nav-box">
					<div class="course-nav-hd">
						<span>全部课程</span>
					</div>
					<div class="course-nav-row clearfix">
						<span class="hd l">方向：</span>
						<div class="bd">
							<ul class="">
								<li class="course-nav-item on"><a
									data-href="${pageContext.request.contextPath}/course/tolist?currentpage=0">全部</a></li>
								<c:forEach items="${topcourse}" var="t">
									<li class="course-nav-item
                                ">
										<a
										data-href="${pageContext.request.contextPath}/course/toplistid?topid=${t.c_ID }"
										data-id=${t.c_ID }>${t.c_name}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="course-nav-row clearfix">
						<span class="hd l">分类：</span>
						<div class="bd">
							<ul class="">
								<li class="course-nav-item on all"><a
									data-href="${pageContext.request.contextPath}/course/tolist">全部</a></li>
								<c:forEach items="${nottopcourse}" var="n">
									<li class="course-nav-item "><a
										data-href="${pageContext.request.contextPath}/course/selistid?seid=${n.c_ID }"
										data-id="${n.c_ID }" data-super="${n.c_superior }"
										data-ct="photo">${n.c_name }</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="course-tool-bar clearfix">
					<div class="tool-left l">
						<a href="http://www.imooc.com/course/list?sort=last"
							class="sort-item">最新</a> <a
							href="http://www.imooc.com/course/list?sort=pop"
							class="sort-item active">最热</a>
					</div>
					<div class="l">
						<span class="tool-item" style="display: none;"> <a
							class="follow-learn tool-chk" href="javascript:void(0);">跟我学</a>
						</span>
					</div>
					<div class="tool-right r">
						 <span class="tool-item tool-pager"> <span
							class="pager-num"> <b class="pager-cur">1</b>/<em
								class="pager-total">${page.pagecount}</em>
						</span> <a href="javascript:void(0)"
							class="pager-action pager-prev hide-text disabled">上一页</a> <a
							href="http://www.imooc.com/course/list?page=2"
							class="pager-action pager-next hide-text">下一页</a>
						</span>
					</div>
				</div>
				<div class="course-list">
					<div class="js-course-lists">
						<ul>



							<li class="course-one"><a href="http://www.imooc.com/view/9"
								target="_self">
									<div class="course-list-img">
										<img width="240" height="135" alt="HTML+CSS基础课程"
											src="${pageContext.request.contextPath}/front/img/529dc3380001379906000338-240-135.jpg">
									</div>
									<h5>
										<span>HTML+CSS基础课程</span>
									</h5>
									<div class="tips">
										<p class="text-ellipsis">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</p>
										<span class="l ">更新完毕</span> <span class="l ml20">
											329037 人学习</span>
									</div> <span class="time-label"> 9小时17分钟 | 初级 </span> <b
									class="follow-label">跟我学</b>
							</a></li>
							<%-- 	<c:forEach items="${vlabellist}" var="c">
								<li class="course-one"><a
									href="http://www.imooc.com/view/85" target="_self">
										<div class="course-list-img">
											<img width="240" height="135" alt="J${c.vl_name}"
												src="${pageContext.request.contextPath}/front/img/vlabelimg/${c.vl_img}">
										</div>
										<h5>
											<span>${c.vl_name}</span>
										</h5>
										<div class="tips">
											<p class="text-ellipsis">${c.vl_describe}</p>
											<span class="l "> <c:if test="${c.vl_isend==1}">
											更新完毕
											</c:if> <c:if test="${c.vl_isend==0}">
											更新未完毕
											</c:if>

											</span> <span class="l ml20"> 312765 人学习</span>
										</div> <span class="time-label"> 5小时 | 初级 </span> <b
										class="follow-label">${c.vl_keyword }</b>
								</a></li>
							</c:forEach> 
 --%>
						</ul>
					</div>
					<div class="page">
						<span class="disabled_page">首页</span><span class="disabled_page">上一页</span><a
							data-href="${pageContext.request.contextPath}/course/tolist?currentpage=0" class="active">1</a><a
							href="http://www.imooc.com/course/list?page=2">下一页</a><a
							href="http://www.imooc.com/course/list?page=27">尾页</a>
						<%-- 	<c:forEach
							 items="${page.pagecount }" var="c" >
							 ${ c.index + 1}
							 </c:forEach> --%>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div id="footer">
		<div class="waper">
			<div class="footerwaper clearfix">
				<div class="followus r">
					<a class="followus-weixin" href="javascript:;" target="_blank"
						title="微信">
						<div class="flw-weixin-box"></div>
					</a> <a class="followus-weibo" href="http://weibo.com/u/3306361973"
						target="_blank" title="新浪微博"></a> <a class="followus-qzone"
						href="http://user.qzone.qq.com/1059809142/" target="_blank"
						title="QQ空间"></a>
				</div>
				<div class="footer_intro l">
					<div class="footer-link">
						<a href="" title="关于我们">关于我们</a> <a href="" title="人才招聘">人才招聘</a>
						<a href="" title="讲师招募">讲师招募</a> <a href="" title="联系我们">联系我们</a>
						<a href="#" title="意见反馈">意见反馈</a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div id="J_GotoTop" class="elevator">
		<a class="elevator-weixin" href="javascript:;">
			<div class="elevator-weixin-box"></div>
		</a> <a class="elevator-msg" href="http://www.imooc.com/user/feedback"
			target="_blank" id="feedBack"></a> <a class="elevator-app"
			href="http://www.imooc.com/mobile/app">
			<div class="elevator-app-box"></div>
		</a> <a class="elevator-top" href="javascript:;" style="display: none;"
			id="backTop"></a>
	</div>


</body>
</html>