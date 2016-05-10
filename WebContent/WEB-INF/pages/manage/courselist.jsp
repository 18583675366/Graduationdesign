<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script>
	$(document)
			.ready(
					function() {
						$(".superior")
								.each(
										function(index) {
											var objects = $(this);
											var id = objects
													.attr("data-superior");

											var aj = $
													.ajax({
														url : "${pageContext.request.contextPath}/course/manage/name?id="
																+ id,// 跳转到 action  
														type : 'get',
														async : false,
														cache : false,
														dataType : 'json',
														success : function(data) {
															if (data != null
																	&& typeof (data.c_name) != "undefined") {
																objects
																		.text(data.c_name)
															}

														},
														error : function() {
															// view("异常！");  
															alert("异常！");
														}
													});
										});
						$(".delete").click(function(){
							alert();
						});

					});
</script>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="course/manage/addpage"
				target="navTab"><span>添加</span></a></li>

			<li><a class="edit" href="dynamic/addInfoUI/${loc}"
				target="navTab"><span>编辑</span></a></li>
		</ul>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th style="width: 18px;"><div>
							<input name="ids" value="xxx" type="checkbox">
						</div></th>
				<th width="80px">分类课程id</th>
				<th width="80px">分类课程名字</th>
				<th width="80px">分类课程级别</th>

				<th width="80px">描述</th>
				<th width="80px">父类名字</th>
				<th width="80px">删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courselist}" var="c">
				<tr>
					<td style="width: 18px;"><div>
							<input name="ids" value="xxx" type="checkbox">
						</div></td>
					<td width="120px">${c.c_ID }</td>
					<td width="120px">${c.c_name}</td>
					<c:if test="${c.c_level==0}">
						<td width="120px">二级标签</td>
					</c:if>
					<c:if test="${c.c_level!=0}">
						<td width="120px">一级标签</td>

					</c:if>
					<td width="120px">${c.c_decs }</td>
					<td width="120px" class="superior" data-superior="${c.c_superior }">
					</th>

					<td><a title="确定删除这个课程类别" target="ajaxTodo"
						href="${pageContext.request.contextPath}/course/manage/delete?id=${c.c_ID }"
						 class="btnDel delete">删除</a>
						 <a title="编辑这个课程类别" target="navTab"
						href="${pageContext.request.contextPath}/course/manage/update?id=${c.c_ID }"
						 class="btnEdit">编辑</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>