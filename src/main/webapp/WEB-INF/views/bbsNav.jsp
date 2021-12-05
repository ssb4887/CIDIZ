<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>

<body>
<%-- 메인 네비게이션 --%>
<nav class="navbar navbar-default">

		<%-- 네비게이션 헤더 --%>
		<div class = "navbar-header">
				<button type = "button" class = "navbar-toggle collapsed"
				 	data-toggle = "collapse" data-target = "#bs-navbar-collapse"
				 	arai-expaned = "false">
				 	<span class = "icon-bar"></span>
				 	<span class = "icon-bar"></span>
				 	<span class = "icon-bar"></span>
				 </button>
				 <a class = "navbar-brand" href = "${path }/">JSP 게시판</a>
		</div>
		<%-- 네비게이션 헤더 종료 --%>
		
		<%--  네비게이션 메뉴 --%>
		<div class="collapse navbar-collapse" id = "bs-navbar-collapse">
				 <%-- 메인 메뉴 --%>
				<ul class = "nav navbar-nav">
						<li><a href = "${path}/">메인</a></li>	
						<li class="active"><a href="${path}/bbs">게시판</a></li>	
				</ul>
				<%-- 메인 메뉴 종료 --%>
				
				<%-- 마이 페이지 메뉴 --%>
				<!-- 로그인이 되있지 않을 때 표시 -->
				<c:if test = "${empty user_id}" >
				<ul class = "nav navbar-nav navbar-right">
						<li class = "dropdown">
								<a href = "#" class = "dropdown-toggle"
										data-toggle = "dropdown" role="button"
										aria-haspopup="true" aria-expanded = "false ">
										 로그인 및  가입<span class = "caret"></span>							
								</a>
								<ul class = "dropdown-menu">
										<li><a href = "${path}/login">로그인</a></li>
										<li><a href = "${path}/join">회원가입</a></li>
								</ul>
						</li>
				</ul>
				</c:if>
				
				<!-- 로그인이 되었을 때 표시 -->
				<c:if test = "${not empty user_id}" >
				<ul class = "nav navbar-nav navbar-right">
						<li class = "dropdown">
								<a href = "#" class = "dropdown-toggle"
										data-toggle = "dropdown" role="button"
										aria-haspopup="true" aria-expanded = "false ">
										 ${user_id}<span class = "caret"></span>							
								</a>
								<ul class = "dropdown-menu">
										<li><a href = "${path}/logout">로그아웃</a></li>
								</ul>
						</li>
				</ul>
				</c:if>
				<%-- 마이페이지 메뉴 종료 --%>
				
		</div>
		<%-- 네비게이션 메뉴 종료  --%>
		
</nav>
<%-- 메인 네비게이션 종료 --%>

</body>
</html>