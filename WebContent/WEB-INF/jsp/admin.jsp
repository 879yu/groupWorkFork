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
<<<<<<< HEAD
	<h1>管理者ページ</h1>
	<form action="/groupwork/BookServlet" method="post">
		<input type="text" name="isbn" value="登録する本名を入力してください">
		<button class="btn btn-primary" type="submit">登録</button>
	</form>
	<form action="/groupwork/BookServlet" method="get">
		<button class="btn btn-primary" type="submit">登録書籍一覧</button>
	</form>
	<form action="/groupwork/UserServlet" method="get">
		<button class="btn btn-primary" type="submit">従業員一覧</button>
	</form>
	<form action="/groupwork/LendServlet" method="get">
		<button class="btn btn-primary" type="submit">貸し借り履歴一覧</button>
	</form>
=======
		<h1 class="admin">管理者ページ</h1>
				<%@ include file="/WEB-INF/jsp/sidebar.jsp"%>
				<div class="register">
			<form action="" method="post">
				<input type="text" placeholder="本を登録" class="insert_book_name">
				<button class="btn btn-primary" type="submit">登録</button>
		</form>
		</div>

		<!-- メインコンテンツ -->
			<main role="main" class="col-10 ml-sm-auto">
				<div class="container-fluid my-2">
					<c:forEach var="book_data" items="${bookList}">
						<h4>
							<c:out value="${book_data.title }" />
							:
							<c:out value="${book_data.author }" />
						</h4>
						<div>
							<div class="row ml-5">
								<div class="col-1">
									<img src=<c:out value="${book_data.imageLinks }"/> alt="本画像" class="image_links">
								</div>
								<div class="col-8 m-5">
									<p>
										<c:out value="${book_data.description }" />
									</p>
								</div>
								<div class="col-1">
									<form action="#" method="get">
										<button type="submit" class="btn btn-outline-dark">返却</button>
									</form>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>



>>>>>>> refs/heads/create_employee_page
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>