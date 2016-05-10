<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script>
	$(document)
			.ready(
					function() {
						var aj = $
								.ajax({
									url : "${pageContext.request.contextPath}/course/manage/listajax",// 跳转到 action  
									type : 'get',
									cache : false,
									dataType : 'json',
									success : function(data) {
										$
												.each(
														data,
														function(index) {
															if (data[index].c_level > 0) {
																var html = "<option value="+data[index].c_ID+">"
																		+ data[index].c_name
																		+ "</option>"
																$(".super")
																		.append(
																				html);
															}
														});
									},
									error : function() {
										// view("异常！");  
										alert("异常！");
									}
								});
					});
</script>
<div class="pageContent">
	<form method="post" action="${pageContext.request.contextPath}/course/manage/add"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);"
		novalidate="novalidate">
		<div class="pageFormContent" layouth="56"
			style="height: 133px; overflow: auto;">
			<p>
				<label>课程分类名称：</label> <input name="c_name" type="text" size="30"
					class="textInput required">
			</p>
			<p>
				<label>课程级别：</label> <select name="c_level" class="required">
					<option value="0" selected="">0为初级，非0为高级，默认初级</option>
					<option value="0">0</option>
					<option value="1">1</option>
				</select>
			</p>
			<p>
				<label>课程属于那个分类：</label> <select name="c_superior" class="required super">
					<option value="0" selected="">不属于</option>
				</select>
			</p>
			<p>
				<label>课程分类描述：</label> <input name="c_decs" type="text" size="30"
					class="textInput required">
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div></li>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>
</div>
</div>
</div>