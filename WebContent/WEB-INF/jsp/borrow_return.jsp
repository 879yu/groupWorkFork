<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mypage.html</title>

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

<<<<<<< HEAD
	<!-- 自作CSSの読み込み -->
<link rel="stylesheet" href="/groupwork/css/common.css">
<link rel="stylesheet" href="/groupwork/css/navibar.css">
<link rel="stylesheet" href="/groupwork/css/sidebar.css">
<link rel="stylesheet" href="/groupwork/css/main.css">

<!-- GoogleFonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c"
	rel="stylesheet">

=======
	<!-- 自作CSSの読み込み -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/navibar.css">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/main.css">
>>>>>>> refs/remotes/origin/master
</head>

<!-- GoogleFonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c"
	rel="stylesheet">


<body>
	<!-- ナビゲーションバー（全ページ固定） -->
	<header>
		<nav
			class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
			<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">会社名</a>

			<!-- 画面遷移先を指定する -->
			<form class="form-inline w-100" action="/groupwork/BookLendServlet" method="GET">
                <p class="
                    text-white"><input type="radio" name="radioButton" value="0" checked="checked">タイトル</p>
                <p class="
                    text-white"><input type="radio" name="radioButton" value="1">ISBN</p>
                <input name="keyword" class="form-control form-control-dark w-50 m-2" type="text" id="book_title" placeholder="タイトルまたはISBNで検索" aria-label="検索">
                <button class="btn btn-outline-light m-1 my-sm-0" type="submit">検索</button>
            </form>
			<ul class="navbar-nav px-3">
				<li class="nav-item text-nowrap"><a class="nav-link" href="#">（ユーザー名）さん</a>
				</li>
			</ul>
		</nav>
	</header>

	<div class="container-fluid">
		<div class="row">

			<!-- サイドバー（全ページ固定） -->
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">

						<!-- ランキングを表示 -->
						<li class="nav-item"><a class="nav-link active" href="/groupwork/BookLendServlet?'disc'='ranking'">
								<span data-feather="home"></span> <i class="fas fa-list"></i>
								ランキング
						</a></li>

						<!-- 貸出履歴を表示 -->
						<li class="nav-item"><a class="nav-link" href="/groupwork/LendServlet?'disc'='history'"> <span
								data-feather="file"></span> <i class="fas fa-history"></i> 貸出履歴
						</a></li>

						<!-- 返却 -->
						<li class="nav-item"><a class="nav-link" href="/groupwork/LendServlet?'disc'='lend'"> <span
								data-feather="shopping-cart"></span> <i class="fas fa-undo-alt"></i>
								貸出中一覧
						</a></li>

						<!-- <li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> <i class="fas fa-cog"></i>
								設定
						</a></li> -->

						<!-- welcomeページに戻る -->
						<li class="nav-item"><a class="nav-link" href="/groupwork/WelcomeServlet"> <span
								data-feather="users"></span> <i class="fas fa-sign-out-alt"></i>
								ログアウト
						</a></li>
					</ul>
				</div>
			</nav>

			<!-- メインコンテンツ -->
			<main role="main" class="col-10 ml-sm-auto">
				<div class="container-fluid my-2">
					<c:forEach var="book_data" items="${bookLendList}">
						<h4>
							<c:out value="${book_data.title }" />
							:
							<c:out value="${book_data.author }" />
						</h4>
						<h5>
							貸出日<c:out value="${book_data.lendDate }" />
							:
							返却日<c:out value="${book_data.returnDate }" />
						</h5>
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
								<!-- <div class="col-1">
									<form action="#" method="get">
										<button type="submit" class="btn btn-outline-dark">返却</button>
									</form>
								</div> -->
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- jQuery　CDNの読み込み -->
				<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
					integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
					crossorigin="anonymous"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
					integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
					crossorigin="anonymous"></script>
				<script
					src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
					integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
					crossorigin="anonymous"></script>
</body>

</html>
