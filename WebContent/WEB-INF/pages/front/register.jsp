<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<title>注册</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/bootstrap.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/saved_resource.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/front/css/newindex.css"
	type="text/css"></link>
<script
	src="${pageContext.request.contextPath}/front/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#username")
								.blur(
										function() {
											var account = $("#username").val();
											var pas = $("#password").val();

											if (account == ""
													|| (account != "" && !/.+@.+\.[a-zA-Z]{2,4}$/
															.test(account))) {
												var errorMsg = '请输入正确的E-Mail地址.';
												$(".formtips").remove();
												$("#username").parent().append(
														'<span class="formtips onError">'
																+ errorMsg
																+ '</span>');
												$(".btn-info").attr("disabled","disabled");
											} else {
												$(".formtips").remove();
												ajaxemail(account);
												
											}
										})
										function ajaxemail(email){
							 $.ajax({
						            //提交数据的类型 POST GET
						            type:"POST",
						            //提交的网址
						            url:"${pageContext.request.contextPath}/user/isuserexit",
						            //提交的数据
						            data:{account:email},
						            //返回数据的格式
						            datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
						            //在请求之前调用的函数
						          
						            success:function(data){
						               if(data==1){
						            	   var errorMsg = '邮箱已经注册过';
											$(".formtips").remove();
											$("#username").parent().append(
													'<span class="formtips onError">'
															+ errorMsg
															+ '</span>');
											$(".btn-info").attr("disabled","disabled");
						               }
						               else{
						            	   var errorMsg = '邮箱可以使用';
											$(".formtips").remove();
											$("#username").parent().append(
													'<span class="formtips onError">'
															+ errorMsg
															+ '</span>');
											$(".btn-info").removeAttr("disabled"); 
						               }
						            } ,
						            //调用出错执行的函数
						            error: function(){
						                //请求出错处理
						                alert("server出错");
						            }         
						         });
						}

					});
</script>
<style type="text/css">
html, body {
	height: 100%;
}

.box {
	margin: 0 auto;
	position: relative;
	width: 100%;
	height: 130%;
	background-size: 100% 130%;
}

.login-box {
	width: 100%;
	max-width: 500px;
	height: 600px;
	position: absolute;
	top: 50%;
	margin-top: -300px;
	/*设置负值，为要定位子盒子的一半高度*/
}

@media screen and (min-width:500px) {
	.login-box {
		left: 50%;
		/*设置负值，为要定位子盒子的一半宽度*/
		margin-left: -250px;
	}
}

.form {
	width: 100%;
	max-width: 500px;
	height: 275px;
	margin: 25px auto 0px auto;
	padding-top: 25px;
}

.form button {
	background-color: #f01400;
	border-color: #f01400;
	width: 300px;
	height: 30px;
	line-height: 30px;
	font-size: 16px;
	outline: none;
}

.form button:hover {
	background-color: #ff6464;
	border-color: #ff6464;
}

.form button:FOCUS {
	background-color: #ff6464;
	border-color: #ff6464;
}

.login-content {
	height: 400px;
	width: 100%;
	max-width: 500px;
	background-color: rgba(255, 250, 2550, .6);
	float: left;
}

.input-group {
	margin: 0px 0px 30px 0px !important;
}

.form-control, .input-group {
	height: 40px;
}

.form-group {
	margin-bottom: 0px !important;
}

.login-title {
	padding: 20px 10px;
	background-color: rgba(0, 0, 0, .6);
}

.login-title h1 {
	margin-top: 10px !important;
}

.login-title small {
	color: #fff;
}

.link p {
	line-height: 20px;
	margin-top: 30px;
}

.btn-sm {
	padding: 8px 24px !important;
	font-size: 16px !important;
}
</style>
</head>

<body>
	<div class="box">
		<div class="login-box">
			<div class="login-title text-center">
				<h1>
					<small>注册</small>
				</h1>
			</div>
			<div class="login-content ">
				<div class="form">
					<form action="${pageContext.request.contextPath}/user/registeruser"
						method="post">
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										id="username" name="u_account" class="form-control"
										placeholder="邮箱"> </input> 
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span> <input
										type="password" id="password" name="u_password"
										class="form-control" placeholder="密码"> </input>
								</div>
							</div>
						</div>

						<div class="form-group form-actions">
							<div class="col-xs-8 col-xs-offset-1 ">
								<button type="submit" class="btn btn-sm btn-info">
									<span class="glyphicon glyphicon-off"></span> 注册
								</button>
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-5 link">
								<p class="text-center remove-margin">
									<small>返回登录？</small> <a href="javascript:void(0)"><small>登录</small></a>
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
