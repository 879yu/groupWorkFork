<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ja">
<head>
<title>書籍管理TOPページ</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP&display=swap"
	rel="stylesheet">
<link href="album.css" rel="stylesheet">
<link href="example.css" rel="stylesheet">
</head>

<body>
	<a id="skippy" class="sr-only sr-only-focusable" href="#content">
		<div class="container">
			<span class="skiplink-text">Skip to main content</span>
		</div>
	</a>

	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4">
						<h4 class="text-white">About</h4>
						<p class="text-muted">撮影者や撮影した背景など,
							アルバムに関する情報を追加しましょう。いくつかの文を書いておくと, 友達が写真を選ぶ手助けになるかもしれません。また, 写真は
							SNS や連絡先へとリンクしておきましょう。</p>
					</div>
					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-white">Contact</h4>
						<ul class="list-unstyled">
							<!-- <li><a href="#" class="text-white">Follow on Twitter</a></li> -->
							<li><a href="#" class="text-white">Twitter でフォローする</a></li>
							<!-- <li><a href="#" class="text-white">Like on Facebook</a></li> -->
							<li><a href="#" class="text-white">Facebook でいいねする</a></li>
							<!-- <li><a href="#" class="text-white">Email me</a></li> -->
							<li><a href="#" class="text-white">Email を送る</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="mr-2">
                        <path
							d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                        <circle cx="12" cy="13" r="4"></circle>
                    </svg> <!-- <strong>Album</strong> --> <strong>アルバム</strong>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarHeader" aria-controls="navbarHeader"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
	</header>

	<main role="main">

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
						</div>
					</div>
				</c:forEach>
			</div>
			<section class="jumbotron text-center">
				<div class="container">
					<!-- <h1 class="jumbotron-heading">Album example</h1> -->
					<h1 class="jumbotron-heading">グループ2班 書籍管理</h1>
					<!-- <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p> -->
					<p class="lead text-muted"></p>
					<p>
						<!-- <a href="#" class="btn btn-primary my-2">Main call to action</a> -->
						<a href="/groupwork/LoginServlet" class="btn btn-primary my-2">ログインページ</a>
						<!-- <a href="#" class="btn btn-secondary my-2">Secondary action</a> -->
					</p>
				</div>
			</section>

			<div class="album py-5 bg-light">
				<div class="container">

<<<<<<< HEAD
				<div class="row">
				<c:forEach var="book_data" items="${bookList}">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src=<c:out value="${book_data.imageLinks }" />>
							<div class="card-body">
								<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
								<p class="card-text"><c:out value="${book_data.title }" /></p>
								<div class="d-flex justify-content-between align-items-center">
									<!-- <div class="btn-group"> -->
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">見る</button> -->
										<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
										<!-- button type="button" class="btn btn-sm btn-outline-secondary">編集</button> -->
									<!-- </div> -->
									<!-- <small class="text-muted">9 mins</small> -->
									<small class="text-muted"></small>
=======
					<div class="row">
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java1.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
									</div>
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<!-- <div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java2.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java2.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java3.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java3.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>

<<<<<<< HEAD
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java4.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java4.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java5.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java5.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java6.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java6.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>

<<<<<<< HEAD
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap" style="height: 225px; width: 100%; display: block; object-fit: contain;"
								src="img/java7.jpg">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<img class="card-img-top"
									data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
									alt="Card image cap"
									style="height: 225px; width: 100%; display: block; object-fit: contain;"
									src="img/java7.jpg">
								<div class="card-body">
									<!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
									<p class="card-text">書籍名</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
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
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
<<<<<<< HEAD
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
								alt="Card image cap">
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
								<p class="card-text">書籍名</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">見る</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">編集</button>
=======
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
											<button type="button"
												class="btn btn-sm btn-outline-secondary">見る</button>
											<!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
											<button type="button"
												class="btn btn-sm btn-outline-secondary">編集</button>
										</div>
										<!-- <small class="text-muted">9 mins</small> -->
										<small class="text-muted"></small>
>>>>>>> refs/heads/plobably_final_branch
									</div>
<<<<<<< HEAD
									<small class="text-muted">9 mins</small>
									<small class="text-muted"></small>
=======
>>>>>>> refs/heads/plobably_final_branch
								</div>
							</div>
						</div>
					</div> -->
					</c:forEach>
				</div>
			</div>

		</main>

		<footer class="text-muted">
		<div class="container">
			<p class="float-right">
				<!-- <a href="#">Back to top</a> -->
				<a href="#">トップに戻る</a>
			</p>
			<!-- <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p> -->
			<p>アルバムサンプルは &copy; Bootstrap ですが, ダウンロードしてカスタマイズしてみましょう。</p>
			<!-- <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p> -->
			<p>
				Bootstrap は初めてですか？ <a href="../../">Bootstrap ホームページにアクセスする</a>か<a
					href="../../getting-started/">スタートガイド</a>を読みましょう。
			</p>
		</div>
	</footer>
	<script src="../../assets/js/vendor/holder.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.5/assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/anchor.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/clipboard.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/bs-custom-file-input.min.js"></script>
	<script src="/docs/4.5/assets/js/src/application.js"></script>
	<script src="/docs/4.5/assets/js/src/search.js"></script>
	<script src="/docs/4.5/assets/js/src/ie-emulation-modes-warning.js"></script>
</body>
</html>
