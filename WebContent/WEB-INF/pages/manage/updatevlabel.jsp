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
									async : false,
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
						level();
						superlo();
						function level() {
							var level = $(".level").attr("data-level");
							$(".level option").each(function() {
								if ($(this).val() == level) {
									$(this).attr("selected", "selected");
								}
							})
						}

						function superlo() {
							var level = $(".super").attr("data-super");
							$(".super option").each(function() {
								if ($(this).val() == level) {
									$(this).attr("selected", "selected");
								}
							})
						}
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
		<p style="margin-left: 10px;">
		<label>课程标签图片地址：${updatevlabel.vl_img}</label>
			<input id="upload_url1" class="upload_input" type="file"
				name="vl_img">
		</p>
	</form>
	<form method="post"
		action="${pageContext.request.contextPath}/vlabel//manage/updatepage?id=${updatevlabel.vl_id }"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);"
		novalidate="novalidate">
		<div class="pageFormContent" layouth="70"
			style="height: 200px; overflow: auto;">
			<p>
				<label>课程标签名称：</label> <input name="vl_name" type="text" size="30"
					class="textInput required" value="${updatevlabel.vl_name}">
			</p>
			<p>
				<label>课程标签关键字：</label> <input name="vl_keyword" type="text"
					size="30" class="textInput required"
					value="${updatevlabel.vl_keyword}">

			</p>
			<p>
				<label>课程标签描述：</label><input name="vl_describe" type="text"
					size="30" class="textInput required"
					value="${updatevlabel.vl_describe}">

			</p>
			<p>
				<label>课程属于分类：</label><select name="vl_remarks"
					data-super="${updatevlabel.vl_remarks }" class="required super">

				</select>

			</p>
			<p>
				<label>课程是否更新完毕：</label>

				<c:if test="${updatevlabel.vl_isend  eq 1}">
					<select name="vl_isend" class="required ">
						<option value="1" selected="">更新完成</option>
						<option value="0">更新未完成</option>
					</select>

				</c:if>
				<c:if test="${updatevlabel.vl_isend  eq 0}">
					<select name="vl_isend" class="required">
						<option value="1">更新完成</option>
						<option value="0" selected="">更新未完成</option>
					</select>
				</c:if>


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