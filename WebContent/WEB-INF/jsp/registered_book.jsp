<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ include file="/WEB-INF/jsp/application.jsp" %>
		<%@ include file="/WEB-INF/jsp/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- BootStrap CDNの読み込み -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- fontawesome　CDNの読み込み -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!-- 自作CSSの読み込み -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/navibar.css">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/registered.css>

<!-- GoogleFonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c"
	rel="stylesheet">
</head>

<body>

	<div class="container-fluid">
		<div class="row">

			<!-- サイドバー（全ページ固定） -->
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">

						<!-- 書籍データを全て表示 -->
						<li class="nav-item"><a class="nav-link active" href="#">
								<span data-feather="home"></span> <i class="fas fa-list"></i>
								蔵書一覧 <span class="sr-only">(現在位置)</span>
						</a></li>

						<!-- 貸出中の書籍を表示 -->
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file"></span> <i class="fas fa-history"></i> 貸出履歴
						</a></li>

						<!-- 返却 -->
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> <i class="fas fa-undo-alt"></i>
								本を返却
						</a></li>

						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> <i class="fas fa-cog"></i>
								設定
						</a></li>

						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="users"></span> <i class="fas fa-sign-out-alt"></i>
								ログアウト
						</a></li>
					</ul>
			</nav>
	<h1 class="lend_borrow_table">貸し借り履歴一覧</h1>
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
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>