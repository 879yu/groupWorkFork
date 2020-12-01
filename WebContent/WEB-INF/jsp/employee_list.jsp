<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/application.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- fontawesome　CDNの読み込み -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!-- GoogleFonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c"
	rel="stylesheet">

<!-- 自作CSSの読み込み -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/navibar.css">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/main.css">
</head>
</head>
<body>
	<h1>従業員一覧</h1>
	<!-- メインコンテンツ -->
	<main role="main" class="col-md-9 ml-sm-auto col-lg-10">
		<div class="card">
			<div class="card-body">
				<c:forEach var="employee" items="${userList }">
					<p>
						<c:out value="${employee.userID }" />
					</p>
					<p>
						<c:out value="${employee.userList }" />
					</p>
				</c:forEach>
			</div>
		</div>
		<script
			src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script
			src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>