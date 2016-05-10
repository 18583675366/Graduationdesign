<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script>
	$(document).ready(function() {
		$(".courseclass").each(function(){
			
			var object=$(this);
			 var id=$(this).text();
			 console.log(id);
				var aj = $
				.ajax({
					url : "${pageContext.request.contextPath}/course/manage/name?id="+id,// 跳转到 action  
					type : 'get',
					cache : false,
					async : false,
					dataType : 'json',
					success : function(data) {
						object.text(data.c_name);
					},
					error : function() {
						// view("异常！");  
						alert("异常！");
					}
				});
		 
		})
	});
</script>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="${pageContext.request.contextPath}/vlabel/manage/addpage" target="navTab"><span>添加</span></a></li>

			<li><a class="edit" href="dynamic/addInfoUI/" target="navTab"><span>编辑</span></a></li>
		</ul>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th style="width: 18px;"><div>
						<input name="ids" value="xxx" type="checkbox">
					</div></th>
				<th width="120px">课程标签id</th>
				<th width="120px">课程标签对应视屏ID</th>
				<th width="120px">课程标签名字</th>
				<th width="120px">课程标签关键字</th>

				<th width="120px">课程便签描述</th>
				<th width="120px">课程便签属于哪个分类</th>
				<th width="120px">是否更新完成</th>
				<th width="120px">标签的图片地址</th>
				<th width="120px">删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vlabelall}" var="c">
				<tr>
					<td style="width: 18px;"><div>
							<input name="ids" value="xxx" type="checkbox">
						</div></td>
					<td width="200px">${c.vl_id }</td>
					<td width="200px">${c.v_ID}</td>
					<td width="200px">${c.vl_name}</td>
					<td width="200px">${c.vl_keyword}</td>
					<td width="200px">${c.vl_describe}</td>

					<td width="200px" class="courseclass">${c.vl_remarks}</td>
					<td width="200px">${c.vl_isend}</td>
					<td width="200px">${c.vl_img}</td>

					<td><a title="确定删除这个课程类别" target="ajaxTodo"
						href="${pageContext.request.contextPath}/vlabel/manage/delete?id=${c.vl_id }"
						class="btnDel delete">删除</a> <a title="编辑这个课程类别" target="navTab"
						href="${pageContext.request.contextPath}/vlabel/manage/update?id=${c.vl_id }"
						class="btnEdit">编辑</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>