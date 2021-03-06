<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- ナビゲーションバー（全ページ固定） -->
    <header>
        <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">会社名</a>

            <!-- 画面遷移先を指定する -->
            <form class="form-inline w-100" action="#" method="GET">
                <label for="book_title" class="text-white">書籍タイトル：</label>
                <input name="serch_title" class="form-control form-control-dark w-25 m-2" type="text" id="book_title"
                    placeholder="タイトルで検索" aria-label="検索">
                <label for="book_isbn" class="text-white">　　ISBN：</label>
                <input name="serch_isbn" class="form-control form-control-dark w-25 m-2 mr-3" type="text" id="book_isbn"
                    placeholder="ISBNで検索" aria-label="検索">
                <button class="btn btn-outline-light m-2 my-sm-0" type="submit">検索</button>
            </form>
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="#">（ユーザー名）さん</a>
                </li>
            </ul>
        </nav>
    </header>
</body>
</html>