<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/admin.css">
<meta charset="UTF-8">
<title>管理者ページ</title>
</head>
<body>
	<h1>管理者ページ</h1>
	<form action="" method="post">
		<input type="text" value="登録する本名を入力してください">
		<button class="btn btn-primary" type="submit">登録</button>
	</form>
	<form action="/groupwork/BookServlet" method="get">
		<button class="btn btn-primary" type="submit">登録書籍一覧</button>
	</form>
	<form action="employee_list.jsp" method="get">
		<button class="btn btn-primary" type="submit">従業員一覧</button>
	</form>
	<form action="lend_borrow.jsp" method="get">
		<button class="btn btn-primary" type="submit">貸し借り履歴一覧</button>
	</form>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>