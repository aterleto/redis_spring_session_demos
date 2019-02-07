<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>

<html>
	<head>
		<title>Login Page</title>
	</head>

	<link type="text/css" rel="stylesheet" href='<c:url value="/style.css"/>' />

	<body onload='document.loginForm.username.focus();'>
		
		<img src="RedisLabs-logo.png" alt="" />
	
		<br />
	
		<h2>Login with UserName and Password</h2>
	
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
	
		<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
	
			<table>
				<tr>
					<td width="50">User:</td>
					<td><input type='text' name='j_username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='j_password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="Login" /></td>
				</tr>
			</table>
	
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
	
		</form>
	
		<br />
		<br />
	
		<h3>Username and Password Options</h3>
		<table class="credentials" border="1">
			<thead>
				<tr>
					<th align="center" width="150" >Username</th>
					<th align="center" width="100" >Password</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center" width="150" ><font color="blue"><b>Leonardo</b></td>
					<td align="center" width="100" ><font color="green"><b>tmnt</b></font></td>
				</tr>
				<tr>
					<td align="center" width="150" ><font color="darkorange"><b>Michelangelo</b></td>
					<td align="center" width="100" ><font color="green"><b>tmnt</b></font></td>
				</tr>
				<tr>
					<td align="center" width="150" ><font color="red"><b>Raphael</b></td>
					<td align="center" width="100" ><font color="green"><b>tmnt</b></font></td>
				</tr>
				<tr>
					<td align="center" width="150" ><font color="darkviolet"><b>Donatello</b></td>
					<td align="center" width="100" ><font color="green"><b>tmnt</b></font></td>
				</tr>
			</tbody>
		</table>
	
	</body>
</html>