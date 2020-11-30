<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<title>mypage</title>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">グループ２班</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="/welcome.jsp">ログアウト<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">Features</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
	</div>
</nav>

<body>
	<h1>従業員氏名</h1>

	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">書籍画像</th>
				<th scope="col">書籍名</th>
				<th scope="col">状態</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><img src="/groupwork/img/java1.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>Otto</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td><img src="/groupwork/img/java2.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>Thornton</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div></td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td><img src="/groupwork/img/java3.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>000</td>
				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div></td>
			</tr>
			<tr>
				<th scope="row">4</th>
				<td><img src="/groupwork/img/java4.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>Otto</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">5</th>
				<td><img src="/groupwork/img/java5.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>Thornton</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">6</th>
				<td><img src="/groupwork/img/java6.jpg" alt="..."
					class="img-thumbnail"></td>
				<td></td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">7</th>
				<td><img src="/groupwork/img/java7.jpg" alt="..."
					class="img-thumbnail"></td>
				<td>Otto</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">8</th>
				<td><img src="..." alt="..." class="img-thumbnail"></td>
				<td>Thornton</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">9</th>
				<td><img src="..." alt="..." class="img-thumbnail"></td>
				<td>Thornton</td>
				<td>
					<!-- Small modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bd-example-modal-sm">貸出中</button>

					<div class="modal fade bd-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								貸出中<br> ◯日間借りています
							</div>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
