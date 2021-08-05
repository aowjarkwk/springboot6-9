<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트2 페이지</title>
<!-- tablib를 사용하는 이유  -->
<!-- html/jsp 코드가 간결해 진다. -->
</head>
<body>
	<h2>테스트2 페이지</h2>

	
	<br>
	${ list }
	<br>
	<br>
	
	<c:forEach var="item" items="${ list }" >
		${ item } <br>
	</c:forEach>
	<%
		//for(int i=0; i<lists.length(); i++){
		//  ....
		//}
	%>
	
	<br>
	<br>
	당신의 이름은 ${ name } 입니다.
	
</body>
</html>