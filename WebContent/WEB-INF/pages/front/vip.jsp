<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>VIP</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/saved_resource.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/newindex.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/common_sync0_libs.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/vip.css">
<script
	src="${pageContext.request.contextPath}/front/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".buy").click(function() {
							var retain = $(this).attr("data-retain");
							var time = $(this).attr("data-time");
							var price = $(this).attr("data-price");
							ajax(retain, time, price)
						});
						function ajax(retain, time, price) {
							$
									.ajax({
										//提交数据的类型 POST GET
										type : "POST",
										//提交的网址
										url : "${pageContext.request.contextPath}/right/pay/paymoney",
										//提交的数据
										data : {
											retain : retain,
											time : time,
											price : price
										},
										//返回数据的格式
										success : function(data) {
											if (data == 1) {
												window.location.href = "${pageContext.request.contextPath}/user/login"
											} else {

												window.location.href = "${pageContext.request.contextPath}/right/pay/topaymoney"
											}
										},
										//调用出错执行的函数
										error : function() {
											//请求出错处理
											alert("异常")
										}
									});

						}
					});
</script>
<style type="text/css">
a:HOVER {
	cursor: pointer;
}
</style>
</head>
<%@ include file="../../header.jsp"%>
</head>
<body>
	<div id="pager">
		<div id="vip-box">
			<!--258天-->
			<div class="online-day">
				<div class="w-1000">
					<h1>程序员</h1>
					<ul class="zhuanye">
						<li><img
							src="${pageContext.request.contextPath}/front/img/vip_1_6707bc7.png">
							<strong>最新</strong>
							<p>
								每周14+新课程<br> <span>最前沿的技术让你更具竞争力</span>
							</p></li>
						<li><img
							src="${pageContext.request.contextPath}/front/img/vip_2_bb5597d.png">
							<strong>实战</strong>
							<p>
								实战出发，最短周期达成效果<br> <span>最新的，实战的，系统的课程每天更新</span>
							</p></li>
						<li><img
							src="${pageContext.request.contextPath}/front/img/vip_3_f49969d.png">
							<strong>系统化</strong>
							<p>
								知识体系图，实战路径图<br> <span>由易到难，循序渐进，全面掌握知识</span>
							</p></li>
					</ul>
					<!--卡片列表-->
					<div class="card-list">
						<dl class="cf">
							<dd>
								<div class="vip-time">
									<h2>月会员</h2>
									<div class="pay-money">
										<em>￥</em> <span>30</span> 1个月
									</div>
								</div>
								<ul>
									<c:forEach var="r" items="${right }">
										<c:if test="${r.retain!=2 }">
											<li>${r.ur_name }</li>
										</c:if>
										<c:if test="${r.retain==2 }">
											<li></li>
										</c:if>
									</c:forEach>
								</ul>
								<a data-retain="1" data-time="1" data-price="30"
									class="greenbtn buy"
									jktag="&amp;posArea=0001&amp;posOper=23002&amp;posColumn=1.1&amp;aMPtype=month&amp;aMPNum=1">立即购买</a>
							</dd>
							<dd>
								<div class="vip-time">
									<h2>半年会员</h2>
									<div class="pay-money">
										<em>￥</em> <span>180</span> 6个月
									</div>
								</div>
								<ul>
									<c:forEach var="r" items="${right }">
										<c:if test="${r.retain!=2 }">
											<li>${r.ur_name }</li>
										</c:if>
										<c:if test="${r.retain==2 }">
											<li></li>
										</c:if>
									</c:forEach>
								</ul>
								<a class="greenbtn buy" data-retain="1" data-time="6"
									data-price="180"
									jktag="&amp;posArea=0001&amp;posOper=23002&amp;posColumn=1.2&amp;aMPtype=month&amp;aMPNum=6">立即购买</a>
							</dd>
							<dd>
								<div class="vip-time relative">
									<img
										src="${pageContext.request.contextPath}/front/img/vip_4_8a60f26.png"
										class="zhaozhi absolute">
									<h2>年会员</h2>
									<div class="pay-money">
										<em>￥</em> <span>260</span> 1年
									</div>
									<p>
										原价¥360 立省<span class="color-red">¥100</span>
									</p>
								</div>
								<ul>
									<c:forEach var="r" items="${right }">
										<li>${r.ur_name }</li>
									</c:forEach>

								</ul>
								<a class="orinagebtn buy" data-retain="2" data-time="12"
									data-price="260"
									jktag="&amp;posArea=0001&amp;posOper=23002&amp;posColumn=1.3&amp;aMPtype=years&amp;aMPNum=1">立即购买</a>
							</dd>
							<dd class="mar-no">
								<div class="vip-time">
									<h2>年会员</h2>
									<div class="pay-money">
										<em>￥</em> <span>520</span> 2年
									</div>
									<p>
										原价¥720 立省<span class="color-red">¥200</span>
									</p>
								</div>
								<ul>
									<c:forEach var="r" items="${right }">
										<li>${r.ur_name }</li>
									</c:forEach>
								</ul>
								<a class="greenbtn buy" data-retain="3" data-time="24"
									data-price="520"
									jktag="&amp;posArea=0001&amp;posOper=23002&amp;posColumn=1.4&amp;aMPtype=years&amp;aMPNum=2">立即购买</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="xxfs">
				<div class="w-1000 cf">
					<!--<h2><i></i>极客们追求更加高效的学习方式，和最佳的职业技能学习途径</h2>-->
					<table class="duibi">
						<tbody>
							<tr>
								<th width="160"></th>
								<th width="279" class="greencolor yellowbc">dg</th>
								<th width="279" class="blue-color">传统论坛</th>
								<th width="279" class="blue-color">线下机构</th>
							</tr>
							<tr>
								<td><strong>内容</strong></td>
								<td class="yellowbc">
									<p>持续更新的知识体系图和实战路径图</p>
								</td>
								<td>
									<p>海量纷繁无序的资料，知识零散而陈旧</p>
								</td>
								<td>
									<p>内容老套陈旧而不够深入前沿，缺乏实战</p>
								</td>
							</tr>
							<tr>
								<td><strong>过程</strong></td>
								<td class="yellowbc">
									<p>专业老师解答，和线上同学交流</p>
								</td>
								<td>
									<p>大海捞针式的搜寻、问题有问无解</p>
								</td>
								<td>
									<p>填鸭式学习，囫囵吞枣</p>
								</td>
							</tr>
							<tr>
								<td><strong>成本</strong></td>
								<td class="yellowbc">
									<p>每天不到一元钱，学习时间灵活自由</p>
								</td>
								<td>
									<p>在资料寻找和筛选中耗费大量时间</p>
								</td>
								<td>
									<p>费用高，学习周期长</p>
								</td>
							</tr>
							<tr>
								<td><strong>效果</strong></td>
								<td class="yellowbc">
									<p>实战出发，系统掌握知识，效果显而易见</p>
								</td>
								<td>
									<p>学习成果无法得到检验</p>
								</td>
								<td>
									<p>掌握的知识无法应用于实战，效果一般</p>
								</td>
							</tr>
							<tr>
								<td><strong>持续性</strong></td>
								<td class="yellowbc">
									<p>持续学习、贯穿整个职业生涯</p>
								</td>
								<td>
									<p>无法进行持续性学习</p>
								</td>
								<td>
									<p>毕业就是学习的终点</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="add-jkxy">
				<div class="w-1000">
					<table class="mar-b60 duibi">
						<tbody>
							<tr>
								<th width="160"></th>
								<th width="279">免费用户</th>
								<th width="279" class="bluebc">月会员 ￥30/月</th>
								<th width="279" class="yellowbc">年会员 ￥260/年</th>
							</tr>


							<c:forEach var="r" items="${right }">
								<c:if test="${r.retain==0 }">
									<tr>
										<td><strong>${r.ur_name }</strong></td>
										<td><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png"></td>
										<td class="bluebc"><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png">
										</td>
										<td class="yellowbc"><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png">
										</td>
									</tr>

								</c:if>
								<c:if test="${r.retain==1 }">
									<tr>
										<td><strong>${r.ur_name}</strong></td>
										<td></td>
										<td class="bluebc"><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png">
										</td>
										<td class="yellowbc"><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png">
										</td>
									</tr>
								</c:if>
								<c:if test="${r.retain==2 }">
									<tr>
										<td><strong>${r.ur_name}</strong></td>
										<td></td>
										<td class="bluebc"></td>
										<td class="yellowbc"><img
											src="${pageContext.request.contextPath}/front/img/f-2_06e1208.png">
										</td>
									</tr>
								</c:if>

							</c:forEach>
							<tr>
								<td><strong></strong></td>
								<td></td>
								<td class="bluebc"><a class="greenbtn buy" data-retain="1"
									data-time="1" data-price="30"
									jktag="&amp;posArea=0002&amp;posOper=23003&amp;posColumn=2.2&amp;aMPtype=month&amp;aMPNum=1">立即购买</a>
								</td>
								<td class="yellowbc"><a class="greenbtn buy"
									data-retain="2" data-time="12" data-price="260"
									jktag="&amp;posArea=0001&amp;posOper=23003&amp;posColumn=2.3&amp;aMPtype=years&amp;aMPNum=1">立即购买</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>