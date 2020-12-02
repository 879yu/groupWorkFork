<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
									<img src=<c:out value="${book_data.imageLinks }" /> width="150"
										height="200" class="rounded" alt="...">
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

				<div class="container">

				<div class="row">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java1.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java2.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java3.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java4.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java5.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java6.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java7.jpg">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap">
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
									</div>
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>