<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>管理者ページ</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/admin.css">
<meta charset="UTF-8">
</head>
<body>
		<h1 class="admin">管理者ページ</h1>
				<%@ include file="/WEB-INF/jsp/sidebar.jsp"%>
				<div class="register">
			<form action="" method="post">
				<input type="text" placeholder="本を登録" class="insert_book_name">
				<button class="btn btn-primary" type="submit">登録</button>
		</form>
		</div>



	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>