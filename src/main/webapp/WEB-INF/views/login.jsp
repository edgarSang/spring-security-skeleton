<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" session="true" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Spring Security mvc default (XML)</title>
</head>
<body>
	<div align="center">
		<form id="loginfrm" name="loginfrm" method="POST"
			action="<c:url value='/login'/>">
			<table>
				<tr>
					<td style="width: 50px;">id</td>
					<td style="width: 150px;">
						<input style="width: 145px;" type="text" id="loginid" name="id" value="" />
					</td>
				</tr>
				<tr>
					<td>pwd</td>
					<td>
						<input style="width: 145px;" type="text" id="loginpwd" name="pwd" value="" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" id="loginbtn" value="LOGIN" />
					</td>
				</tr>
				<c:if test="${not empty param.fail}">
					<tr>
						<td colspan="2">
							<font color="red">
								<p>Your login attempt was not successful, try again.</p>
								<p>Reason: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
							</font> 
							<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION" />
						</td>
					</tr>
				</c:if>
			</table>
		</form>
	</div>
</body>
</html>