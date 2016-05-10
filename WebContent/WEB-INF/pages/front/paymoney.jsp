<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>实战课程</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">

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
						$(".wxpay ")
								.click(
										function() {
											$(".jquery-modal")
													.attr(
															"style",
															"top: 0px; right: 0px; bottom: 0px; left: 0px; width: 100%; height: 100%; position: fixed; z-index: 1; opacity: 0.75; background: rgb(0, 0, 0)")
											$(".current")
													.attr(
															"style",
															"position: fixed; top: 50%; left: 50%; margin-top: -169.5px; margin-left: -200px; z-index: 2; display: block;height:330px;")
										});
						$(".glyphicon-remove").click(function() {
							$(".jquery-modal").attr("style", "block")
							$(".current").attr("style", "none")
						});
						$("#p-next-btn").click(function(){
							window.location.href = "${pageContext.request.contextPath}/right/pay/topaymoneyend"

						})
					});
</script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/common-less.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/pay-less.css">
</head>
<%@ include file="../../header.jsp"%>
</head>
<body>
	<div id="pay-banner">
		<img id="banner-bg"
			src="${pageContext.request.contextPath}/front/img/pay-banner.jpg"
			alt="">
		<div id="banner-wrap">
			<div class="pay-container">
				<h1 class="pay-banner-title">收银台</h1>
			</div>
		</div>
	</div>
	<div class="pay-container pay-content-wrap">

		<div id="pay-info" data-tc="1346:38">
			<h3 class="pay-sub-title">支付信息</h3>
			<table class="pay-table">
				<thead>
					<tr>
						<th><span class="p-th-course">内容</span></th>
						<!--<th class="t-title-md">期限</th>-->
						<th class="t-title-md">单价</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="p-info-course"><span id="p-course-name">${order.or_content}</span></th>
						<td class="t-title-md"><span class="p-single-money">${order.or_price}</span></td>

					</tr>
				</tbody>
			</table>
		</div>
		<h3 class="pay-sub-title">支付方式</h3>
		<div id="pay-type">
			<div class="mask"></div>
			<ul class="pay-list">
				<li class="alipay pay-item"></li>
				<li class="wxpay pay-item"></li>
			</ul>
		</div>
		<div id="pay-summary">

			<p>
				<label><input class="js-agreement" type="checkbox"
					checked=""> 我已经阅读并同意</label><a
					href="http://coding.imooc.com/user/faqdetail?column_id=1&amp;id=9"
					target="_blank">《用户付费协议》</a><br> 金额总计: <span
					class="money-total">${order.or_price}</span>
			</p>
			<div class="pay-m-next" style="display: block;">
				应付金额:&nbsp;&nbsp;<span class="money-pay">${order.or_price}</span>
				<button id="p-next-btn">下一步</button>
			</div>
		</div>
		<div id="modal-wxpay" class="modal current">
			<div class="modal-header">
				<h3>微信扫描支付</h3>
				<a href="#"><span class="glyphicon glyphicon-remove"></span></a>
			</div>
			<div class="wxcode">
				<div class="qrcode-img js-qrcode-img"
					data-url="/pay/coursewxpay/cid/38/trade_id/1346"></div>

				<span class="wx-pay-info">微信扫描二维码以完成支付</span> <span
					class="wx-pay-price">${order.or_price}</span>
			</div>
		</div>
		<div id="modal-payconfirm">
			<div class="modal-body">
				<h3>请您在新打开的页面完成支付</h3>
				<span>支付完成前请不要关闭此窗口</span> <span>支付完成后，将返回你购买的课程页面</span> <span>如支付失败，可在我的慕课中查看是否购买成功</span>
				<p id="pay-tips">未支付成功，请在支付页继续完成支付 !</p>
			</div>
			<div class="modal-footer">
				<div class="footer-wrap">
					<a href="javascript:;" id="reset-pay-type" class="pay-btn checkpay">支付失败</a>
					<button id="pay-complete" class="checkpay">支付完成</button>
				</div>
			</div>
		</div>
		<div class="jquery-modal blocker" style="display: none"></div>
	</div>

</body>
</html>