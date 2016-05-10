<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script>
</script>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add"
				href="${pageContext.request.contextPath}/right/manage/addright"
				target="navTab"><span>添加</span></a></li>

			<li><a class="edit" href="dynamic/addInfoUI/" target="navTab"><span>编辑</span></a></li>
		</ul>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th style="width: 18px;"><div>
						<input name="ids" value="xxx" type="checkbox">
					</div></th>
				<th width="120px">权限id</th>
				<th width="120px">权限对用管理员id</th>
				<th width="120px">权限对于用户id</th>
				<th width="120px">权限名字</th>
				<th width="120px">权限描述</th>

				<th width="120px">权限信息</th>
				<th width="120px">是否启用</th>
				<th width="120px">权限等级</th>
				<th width="120px">删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userrights}" var="c">
				<tr>
					<td style="width: 18px;"><div>
							<input name="ids" value="xxx" type="checkbox">
						</div></td>
					<th width="120px">${c.ur_ID}</th>
					<th width="120px">${c.ad_ID}</th>
					<th width="120px">${c.u_id}</th>
					<th width="120px">${c.ur_name }</th>
					<th width="120px">${c.ur_desc}</th>

					<th width="120px">${c.ur_info }</th>
					<th width="120px">${c.ur_enable}</th>
					<th width="120px">${c.retain }</th>

					<td><a title="确定删除这个权限" target="ajaxTodo"
						href="${pageContext.request.contextPath}/right/manage/delete?id=${c.ur_ID }"
						class="btnDel delete">删除</a> <a title="编辑这个权限" target="navTab"
						href="${pageContext.request.contextPath}/right/manage/update?id=${c.ur_ID }"
						class="btnEdit">编辑</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>