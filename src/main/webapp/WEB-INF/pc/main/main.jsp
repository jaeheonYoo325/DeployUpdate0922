<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<meta name="viewport" content="width=device-width initial-scale=1">			
<script src="<c:url value='/js/common/jquery-3.1.1.min.js' />"></script>
<script src="<c:url value='/bootstrap/js/bootstrap.js' />"></script>
</head>
<body>
 <h1>메인화면</h1>
 <c:choose>
 	<c:when test="${not empty sessionScope._USER_}">
 		<a href="#">${sessionScope._USER_.empName}님 로그인 하셨습니다.</a>
 	</c:when>
 	<c:otherwise>
 		<a href="#">계정 없음</a>
 	</c:otherwise>
 </c:choose>
 
 <a href="/employee/employeeLogout.do">로그아웃</a>
 <input type="button" value="배포" onclick="location.href='/deploy/deploy.do'">
 <input type="button" value="사원등록" onclick="location.href='/employee/employeeRegist.do'">
</body>
</html>