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

<!-- GoogleFonts　CDNの読み込み -->
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c"
	rel="stylesheet">

<!-- 自作CSSの読み込み -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/navibar.css">
<link rel="stylesheet" href="css/sidebar.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/registered.css>
</head>

<body>
<header>
		<nav
			class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
			<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">会社名</a>

			<!-- 画面遷移先を指定する -->
			<form class="form-inline w-100" action="#" method="GET">
				<label for="book_title" class="text-white">書籍タイトル：</label> <input
					name="serch_title" class="form-control form-control-dark w-25 m-2"
					type="text" id="book_title" placeholder="タイトルで検索" aria-label="検索">
				<label for="book_isbn" class="text-white"> ISBN：</label> <input
					name="serch_isbn"
					class="form-control form-control-dark w-25 m-2 mr-3" type="text"
					id="book_isbn" placeholder="ISBNで検索" aria-label="検索">
				<button class="btn btn-outline-light m-2 my-sm-0" type="submit">検索</button>
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
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10">
                <div class="card">
                    <div class="card-header">
                          <c:out value="${book_data.title }"/>
                    </div>
                    <div class="card-body">
                    <c:forEach var="book_data" items="${book_dataList}">
                          <img src=<c:out value="${book_data.imageLinks }"/> alt="本画像" class="image_links">
                        <h5 class="card-title"> <p><c:out value="${book_data.author }" /></p></h5>
                        <textarea cols="60" rows="4" style="overflow:auto;" class="m-2"> <p><c:out value="${book_data.description }" /></p></textarea>
                        <p class="card-text"><p><c:out value="${book_data.publisher }" /><p><c:out value="${book_data.publishedDate }" /></p>
                        </c:forEach>
                        <a href="#" class="btn btn-primary float-right p-3 mt-5">　返却　</a>
                        <p class="alert alert-dark container float-right" role="alert">
                            2020-11-29 ~~~~~~~~~~~~2020-11-30</p>
                        </p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        鬼滅の刃 20
                    </div>
                    <div class="card-body">
                        <img src="http://books.google.com/books/content?id=Kc7YDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api" width="150" height="200" class="rounded float-left m-3" alt="...">
                        <h5 class="card-title">吾峠呼世晴</h5>
                        <textarea cols="70" rows="5" style="overflow:auto;" class="m-2">上弦の壱と交戦する岩柱・悲鳴嶼と風柱・不死川。激しさを増す戦いの中、二人の柱は痣を出現させ連携して戦うも、驚異的な強さに圧倒され続ける。そして、上弦の壱の一部を取り込み回復する玄弥だが…。激闘の行方は――!?</textarea>
                        <a href="#" class="btn btn-primary float-right p-3 mt-5">　返却　</a>
                        <p class="card-text">集英社 : 2020-05-13 : </p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        鬼滅の刃公式ファンブック 鬼殺隊見聞録
                    </div>
                    <div class="card-body">
                        <img src="http://books.google.com/books/content?id=fS-eDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api" width="150" height="200" class="rounded float-left m-3" alt="...">
                        <h5 class="card-title">吾峠呼世晴</h5>
                        <textarea cols="80" rows="5" style="overflow:auto;" class="m-2">・本作の前身『鬼殺の流』の第一話～第三話のネーム初出し完全収録!! ・主要登場人物の誕生日や年齢、趣味などの詳細なプロフィール大公開！ ・吾峠先生描き下ろしのミニイラスト付き「大正コソコソ噂話」大放出！ ・本書のためだけに描き下ろされた「キメツ学園」の特別編がドドンと九ページ掲載!! ・カバーもカバー下の恒例イラストもオール描き下ろし!! ほか特別付録や秘蔵カット、先生直筆のアニメ設定資料など、鬼殺隊士超必読のあれこれが所狭しと掲載！ 是非とも手にすべし!!"</textarea>
                        <a href="#" class="btn btn-primary float-right p-3 mt-5">　返却　</a>
                        <p class="card-text">集英社 : 2019-07-04 : </p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        鬼滅の刃をもっと楽しむための大正時代便覧
                    </div>
                    <div class="card-body">
                        <img src="http://books.google.com/books/content?id=i9DoDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api" width="150" height="200" class="rounded float-left m-3" alt="...">
                        <h5 class="card-title">大正はいから同人会</h5>
                        <textarea cols="90" rows="5" style="overflow:auto;" class="m-2">原作漫画はもとよりテレビアニメが好評を博し、劇場新作の公開も控えている大人気作『鬼滅の刃』。その舞台である大正時代は、明治と昭和という激動の両時代に挟まれ、14年半と短いながらも日本近代史において重要な側面を多く持つ、魅力的な時代でした。本書では大正時代の流れと出来事、醸成された文化や習俗、技術の面から、『鬼滅』の物語の背景と、炭治郎たち鬼殺隊や鬼たちの想い・行動原理に迫ります。 大正時代の知識を深めれば『鬼滅の刃』が更に面白くなる!! 【CONTENTS】 第一章 大正時代とは 大正時代概要 第二章 登場人物にみる時代背景 竈門炭治郎にみる炭焼きの歴史と需要 栗花落カナヲにみる大正時代の人身売買 胡蝶しのぶにみる大正時代の医療 甘露寺蜜璃にみる大正時代の結婚と家制度 宇髄天元にみる忍者観とその歴史 悲鳴嶼行冥にみる大正時代の孤児院 鱗滝左近次にみる大正時代の剣術と切腹観 鋼鐵塚蛍にみる大正時代の刀鍛冶と研師 【コラム】雷に打たれた少年・我妻善逸 【コラム】猪に育てられた野生児・嘴平伊之助 鬼舞辻無惨にみる平安貴族の食事と病気治療 童磨にみる江戸~大正時代の宗教観 猗窩座にみる江戸時代の罪人と入墨刑 半天狗にみる江戸時代の盲人と当道座 鳴女にみる琵琶の歴史と女性の琵琶 【コラム】大正時代における長男・家督相続者の責任 第三章 大正時代の\"衣\" 鬼殺隊ファッション・隊服編 鬼殺隊ファッション・足元編 羽織・着物の柄とその意味 大正時代の和装と洋装 アクセサリーの歴史 【コラム】髪型の洋風化における男女差と結い髪の発展 第四章 大正時代の\"食\" 大正時代のファストフード 大正時代の食風景 大正時代の菓子・蝶屋敷編 大正時代の菓子・恋柱編 第五章 大正時代の\"住\" 急速に西洋化していく東京府 大正時代の浅草 大正時代の吉原 【コラム】関東大震災 大正時代の住宅事情 大正時代の交通インフラ 大正時代の生活インフラ 大正時代の通信インフラ 大正時代に一般化した新文化 女性の社会進出と女性文化の発展 大正時代の子どもの遊び 第六章 鬼とは 「鬼」について 大正時代が舞台の漫画・アニメ</textarea>
                        <a href="#" class="btn btn-primary float-right p-3 mt-5">　返却　</a>
                        <p class="card-text">辰巳出版 : : </p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        鬼滅の刃 17
                    </div>
                    <div class="card-body">
                        <img src="http://books.google.com/books/content?id=wCyrDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api" width="150" height="200" class="rounded float-left m-3" alt="...">
                        <h5 class="card-title">吾峠呼世晴</h5>
                        <textarea cols="40" rows="5" style="overflow:auto;" class="m-2">無惨を討つため無限城に突入した鬼殺隊。上弦の弐・童磨と激闘を繰り広げるしのぶは、毒が効かない童磨に対し苦戦を強いられる。果たして姉の仇を討つことができるのか…!? 一方で、善逸の前にも鬼が立ちはだかり――!?</textarea>
                        <a href="#" class="btn btn-primary float-right p-3 mt-5">　返却　</a>
                        <p class="card-text">集英社 : 2019-10-04 : </p>
                    </div>
                </div>
​

                    <!--  <div class="row p-2 book_info">
                        <div class="col-8">
                        <c:forEach var="book_data" items="${book_dataList}">
                            <img src=<c:out value="${book_data.imageLinks }"/> alt="本画像" class="image_links">
                            <p><c:out value="${book_data.title }"/></p>
                            <p><c:out value="${book_data.author }" /></p>
                            <p><c:out value="${book_data.publisher }" /></p>
                            <p><c:out value="${book_data.publishedDate }" /></p>
                            <p><c:out value="${book_data.publishedDate }" /></p>
                            <p><c:out value="${book_data.description }" /></p>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="row p-2 book_info">
                        <img src="https://picsum.photos/200" class="col-2" alt="サンプル画像">
                        <div class="col-8">
                            <h5 class="book_title">鬼滅の刃　2</h5>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                        </div>
                    </div>

                    <div class="row p-2 book_info">
                        <img src="https://picsum.photos/200" class="col-2" alt="サンプル画像">
                        <div class="col-8">
                            <h5 class="book_title">鬼滅の刃　3</h5>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                        </div>
                    </div>

                    <div class="row p-2 book_info">
                        <img src="https://picsum.photos/200" class="col-2" alt="サンプル画像">
                        <div class="col-8">
                            <h5 class="book_title">鬼滅の刃　4</h5>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                            <p>ここには本の概要が表示されます</p>
                        </div>
                    </div>

                </div>
                -->
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>