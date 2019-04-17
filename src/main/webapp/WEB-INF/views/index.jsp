<%@ page language="java" session="true" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welecome</title>
</head>
<body>
	<div align="center">
		<h1>Welecome Spring Security Sample mvc default</h1>
		<h1>${title}</h1>
		<h2>${message}</h2>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>Welcome : ${pageContext.request.userPrincipal.name}</h2>
		</c:if>
		
		<c:choose>
		    <c:when test="${pageContext.request.userPrincipal.name eq '' || pageContext.request.userPrincipal.name eq null}">
		         HEY Anonymouse, First Of all have to login
		         <h3>
		         	<a href="login">Go to LOGIN Page</a>
		         </h3>
		    </c:when>
		    <c:otherwise>
		    	You can't go to login page, It is Permisson only for Anonymouse
		    	<p>
		    		Do you want to go Play ground?
		    		<form action="<c:url value='/member/playground'/>" method="get">
					    <input type="submit" value="놀러가기" />
					</form>
		    	</p>
		    	<p>
		    		또는 재 로그인을 원하세요?
		    		<form action="<c:url value='/logout'/>" method="post">
		    			<input type="submit" value="logout"/>
		    		</form>
		    	</p>
		    </c:otherwise>
		</c:choose>
	</div>
</body>
</html>