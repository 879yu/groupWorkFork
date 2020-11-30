<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ログイン</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="/groupwork/css/login_regiser_common.css">
<link rel="stylesheet" href="/groupwork/css/login.css">
<!-- Googlefonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=Sawarabi+Mincho"
	rel="stylesheet">

</head>

<body>
	<div id="login">
		<h1 class="text-center pt-5">My Bookshelfへようこそ</h1>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="" method="post">
							<h3 class="text-center">ログイン</h3>
							<div class="form-group">
								<label for="username">ID:</label><br> <input type="text"
									name="user_id" id="username" class="form-control"
									pattern="^[0-9A-Za-z]+$" placeholder="従業員IDを入力してください" required>
							</div>
							<div class="form-group">
								<label for="password">パスワード:</label><br> <input
									type="password" name="password" id="password"
									class="form-control" placeholder="4桁のパスワードを入力してください" required>
							</div>
							<div class="form-group">
								<label for="remember-me"><span>次回から入力を省略</span> <span><input
										id="remember-me" name="remember-me" type="checkbox"></span></label><br>
								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="ログイン">
							</div>
							<!-- <div id="register-link" class="text-right">
									<a href="#">新規登録はこちら</a> -->
						</div>
						</form>
				</div>
			</div>
			<div id="login-column" class="col-md-6"></div>
		</div>
	</div>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>

</html>