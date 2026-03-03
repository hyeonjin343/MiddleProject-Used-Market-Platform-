<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String loginCd = (String)session.getAttribute("loginCode");
%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container px-4 px-lg-5">
		<a class="navbar-brand" href="#!">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!-- search -->
			<form class="d-flex" role="search" style="margin: auto;">
				<input class="form-control" type="search" placeholder="상품 검색하기" aria-label="Search" size="60vh">
				<button class="btn btn-outline-success me-2" type="submit" style="padding: 10px 20px 10px;">검&nbsp;색</button>
			</form>
		</div>
		<div>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">고객센터</a></li>
				<%
					if(loginCd == null) {
				%>
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath() %>/loginForm.jsp">로그인</a></li>
				<%
					} else {
				%>
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath() %>/logout.do">로그아웃</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
</nav>