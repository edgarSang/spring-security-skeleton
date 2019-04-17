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
		<h1>PALY GROUND</h1>
    	<p>
    		Do you want to go Index?
    		<form action="<c:url value='/index'/>">
			    <input type="submit" value="INDEX" />
			</form>
    	</p>
    	<p>	
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<h1>당신은 어드민 이군요, 이문구를 볼 수 있어요: hasRole('ROLE_ADMIN')</h1>
			</sec:authorize>
    	</p>
    	<p>
    		<h2>이 버튼을 눌러서 당신의 힘을 확인하세요.</h2>
    	    <form>
			    <input type="button" value="PLAY" onclick="playPage.getpower()"/>
			</form>
    	</p>
	</div>
</body>
<script type="text/javascript">
	var playPage = {
		getpower : function () {
			var xhr = new XMLHttpRequest();
			xhr.open('GET', '<c:url value="/admin/getpower"/>');
			xhr.onload = function() {
			    if (xhr.status === 200) {
			        alert('응답이 왔습니다.\n' + xhr.responseText);
			    }
			    else {
			        alert('당신은 힘이 없습니다. \n error code:' + xhr.status);
			    }
			};
			xhr.send();
		}		
	}
</script>
</html>