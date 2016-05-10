<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="${pageContext.request.contextPath}/front/js/jquery-1.9.1.min.js"></script>

<title>验证页面</title>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
${info}

<body>
<input type="text" readonly="true" value="5" id="time" style="border:none" size="10">跳转到首页
</body>
<script>
	var t = 5;
	var time = document.getElementById("time");
	function fun() {
		t--;
		time.value = t;
		if (t <= 0) {
			location.href = "${pageContext.request.contextPath}/newindex";
			clearInterval(inter);
		}
	}
	var inter = setInterval("fun()", 1000);
</script>
</body>

</html>