<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트1 페이지</title>
</head>
<body>
	<h2>테스트1 페이지</h2>
	
	<%
		out.println("Model 프로젝트입니다.");
	%>
<!-- 달러{ } : EL 표현언어임.  -->
<!-- JSP나 MVC패턴에서는 getParameter(), getAttribute()함수를 통해 얻어옴.  -->
<!-- 스프링 모델패턴에서는 서로 정의되어 있어서 사용할 수 있음. -->


	당신의 이름은 ${ name } 입니다.



</body>
</html>