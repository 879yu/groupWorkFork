<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
//あ
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン</title>

    <!-- BootStrap CDNの読み込み -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- 自作CSSの読み込み -->
    <link rel="stylesheet" href="/groupwork/css/login_regiser_common.css">
    <link rel="stylesheet" href="/groupwork/css/login.css">

    <!-- GoogleFonts CDNの読み込み -->
    <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
</head>

<body>
    <!-- ナビゲーションバー（全ページ固定） -->
    <header>
        <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-2 shadow">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">会社名</a>
        </nav>
    </header>
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center">ログイン</h3>
                            <div class="form-group">
                                <label for="username">ID:</label><br>
                                <input type="text" name="user_id" id="username" class="form-control"
                                    pattern="^[0-9A-Za-z]+$" placeholder="従業員IDを入力してください" required>
                            </div>
                            <div class="form-group">
                                <label for="password">パスワード:</label><br>
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="4桁のパスワードを入力してください" required>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-outline-dark btn-md text-center"
                                    value="ログイン">
                            </div>
                    </div>
                    </form>
                </div>
            </div>
            <div id="login-column" class="col-md-6"></div>
        </div>
    </div>

    <!-- JavaScript CDNの読み込み -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>

</html>