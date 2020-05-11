<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#logoutBtn').click(function(){
			location.href='../member/logout.do';
		});
	})
</script>
<title>index</title>

</head>
<body>
	<c:if test="${ member == null }">
		<input type="button" value="회원가입" onclick="location.href='./member/memberJoinForm.do'">
	</c:if>
	
	<c:if test="${ member == null }">
		<input type="button" value="로그인" onclick="location.href='./member/login_form.do'">	
	</c:if>
	
	<c:if test="${ member != null }">
		<a href="./mypage.do">마이페이지(${ member.id })</a>
		<input type="button" id="logoutBtn" value="로그아웃">
	</c:if>

</body>
</html>