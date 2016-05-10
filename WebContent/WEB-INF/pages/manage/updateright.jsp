<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include.inc.jsp"%>
<script
	src="${pageContext.request.contextPath}/front/js/ajaxfileupload.js"></script>
<div class="pageContent">
	<form method="post"
		action="${pageContext.request.contextPath}/right/manage/updatepages"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);"
		novalidate="novalidate">
		<div class="pageFormContent" layouth="72"
			style="height: 133px; overflow: auto;">
			<p>
				 <input name="ur_ID" type="hidden" size="30"
					class="textInput required" value="${userright.ur_ID}">
			</p>
			 <p>
				<label>权限名称：</label> <input name="ur_name" type="text" size="30"
					class="textInput required" value="${userright.ur_name}">
			</p>
			<p>
				<label>权限描述：</label> <input name="ur_desc" type="text"
					size="30" class="textInput " value="${userright.ur_desc}"> 
			</p>
			<p>
				<label>权限信息：</label> <input name="ur_info" type="text" size="30"
					class="textInput " value="${userright.ur_info}">
			</p>
			<p class="enable" data-enable=${userright.ur_enable }>
				<label>权限是否启用：</label> 
				<c:if test="${userright.ur_enable ==1}">
				<label style="width: 50px;"><input
					type="radio" name="ur_enable" value="1" checked="checked">是</label> <label><input type="radio"
					name="ur_enable" value="0">否</label>
				</c:if>
				<c:if test="${userright.ur_enable ==0}">
				<label style="width: 50px;"><input
					type="radio" name="ur_enable" value="1" >是</label> <label><input type="radio"
					name="ur_enable" value="0" checked="checked">否</label>
				</c:if>
				
				
				
			</p>
			<p style="width: 400px" class="retain" data-retain=${userright.retain }>
				<label>权限级别：</label> 
				<c:if test="${userright.retain ==0}">
				<label style="width: 50px;"><input
					type="radio" name="retain" value="0" checked="checked">一</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="1">二</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="2">三</label>
				</c:if>
				<c:if test="${userright.retain ==1}">
				<label style="width: 50px;"><input
					type="radio" name="retain" value="0" >一</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="1" checked="checked">二</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="2">三</label>
				</c:if>
				<c:if test="${userright.retain ==2}">
				<label style="width: 50px;"><input
					type="radio" name="retain" value="0" >一</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="1">二</label> <label style="width: 50px;"><input type="radio"
					name="retain" value="2" checked="checked">三</label>
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
<script>

</script>
</div>