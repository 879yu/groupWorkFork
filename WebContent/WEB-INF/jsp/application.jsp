<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index page</title>

    <!-- BootStrap CDNの読み込み -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- fontawesome　CDNの読み込み -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <!-- GoogleFonts　CDNの読み込み -->
    <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">

    <!-- 自作CSSの読み込み -->
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/navibar.css">
    <link rel="stylesheet" href="css/sidebar.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">

            <!-- サイドバー（全ページ固定） -->
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">

                        <!-- 書籍データを全て表示 -->
                        <li class="nav-item">
                            <a class="nav-link active" href="/groupwork/lendServlet?disc=history">
                                <span data-feather="home"></span>
                                <i class="fas fa-list"></i>
                                　蔵書一覧 <span class="sr-only">(現在位置)</span>
                            </a>
                        </li>

                        <!-- 貸出中の書籍を表示 -->
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file"></span>
                                <i class="fas fa-history"></i>
                                　貸出履歴
                            </a>
                        </li>

                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="users"></span>
                                <i class="far fa-comment-dots"></i>
                                　購入をリクエストを送る
                            </a>
                        </li> -->

                        <li class="nav-item">
                            <a class="nav-link" href="/groupwork/LoginServlet">
                                <span data-feather="users"></span>
                                <i class="fas fa-sign-out-alt"></i>
                                　ログアウト
                            </a>
                        </li>
                    </ul>
            </nav>