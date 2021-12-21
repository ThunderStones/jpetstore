<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog"><form action="register" method="post">

	<h3>User Information</h3>

	<table>
		<tr>
			<td>User ID:</td>
			<td><input type="text" name="username" value="${sessionScope.account.username}"/></td>
		</tr>
		<tr>
			<td>New password:</td>
			<td><input type="text" name="password" value="${sessionScope.account.password}"/></td>
		</tr>
		<tr>
			<td>Repeat password:</td>
			<td><input type="text" name="repeatedPassword" ${requestScope.repeatedPassword}/></td>
		</tr>
	</table>

	<%@ include file="./IncludeAccountFields.jsp"%>
	<table>
		<tr>
			<td>CaptchaCode:</td>
			<td><input type="text" name="captchaCode"></td>
			<td><img src="${sessionScope.path}"></td>
		</tr>
	</table>
	<label class="ErrorMsg">${requestScope.msg}</label><br>
	<input type="submit" name="newAccount" value="Save Account Information" />

</form></div>

<%@ include file="../common/IncludeBottom.jsp"%>