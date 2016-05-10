<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script
	src="${pageContext.request.contextPath}/front/js/ajaxfileupload.js"></script>
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
															if (data[index].c_level == 0) {
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
<script>
	$(document).ready(
			function() {
				var input_id_arr = new Array();
				var input_name_arr = new Array();
				$('.upload_input').change(
						function() {
							var input_id = $(this).attr('id');
							var file_path = $(this).val();
							var first_index = file_path.lastIndexOf("\\") + 1;
							var last_index = file_path.length;
							var file_fill_name = file_path.substring(
									first_index, last_index);
							
							first_index = file_fill_name.lastIndexOf(".");
							var file_format = file_fill_name.substring(
									first_index, file_fill_name.length);
							var file_name = new Date().getTime() + file_format
									+ "";
							//ajaxFileUpload(input_id);
							if (input_id == "upload_url1") {
								$('#input_url1').attr('value', file_name);
								input_id_arr[0] = input_id;
								input_name_arr[0] = file_name;
							} else if (input_id == "upload_url2") {
								$('#input_url2').attr('value', file_name);
								input_id_arr[1] = input_id;
								input_name_arr[1] = file_name;
							} else {
								$('#input_url3').attr('value', file_name);
								input_id_arr[2] = input_id;
								input_name_arr[2] = file_name;
							}
						});
				$('#sub_btn').click(
						function() {
							for ( var count in input_id_arr) {
								ajaxFileUpload(input_id_arr[count],
										input_name_arr[count]);
							}
							return true;
						});
				function ajaxFileUpload(input_id, file_name) {
					$.ajaxFileUpload({
						url : 'vlabel/upload',
						type : 'POST',
						data : {
							filename : file_name
						},
						secureuri : false,
						fileElementId : input_id,
						dataType : 'JSON',
						success : function(data, status) {
						
						},
						error : function(data, status, e) {
							alert(e);
						}
					})
					return false;
				}
			});
</script>
<div class="pageContent">
	<form enctype="multipart/form-data" method="post">
		<p>
			<label>课程标签图片：</label> <input id="upload_url1" class="upload_input"
				type="file" name="vl_img">
		</p>
	</form>
	<form method="post"
		action="${pageContext.request.contextPath}/vlabel/manage/add"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);"
		novalidate="novalidate">
		<div class="pageFormContent" layouth="72"
			style="height: 133px; overflow: auto;">
			 <p>
				<label>课程标签名称：</label> <input name="vl_name" type="text" size="30"
					class="textInput required">
			</p>
			<p>
				<label>课程标签对应视屏id：</label> <input name="v_ID" type="text"
					size="30" class="textInput ">
			</p>
			<p>
				<label>课程标签关键字：</label> <input name="vl_keyword" type="text" size="30"
					class="textInput required">
			</p>
			<p>
				<label>课程标签描述：</label> <input name="vl_describe" type="text" size="30"
					class="textInput required">
			</p>
			<p>
				<label>课程标签属于课程：</label> <select name="vl_remarks" class="required super">
				</select>
			</p>
			<p style="width: 400px">
				<label>课程标签是否更新完：</label> <label style="width: 50px;"><input
					type="radio" name="vl_isend" value="1">是</label> <label><input type="radio"
					name="vl_isend" value="0">否</label>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id="sub_btn">保存</button>
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