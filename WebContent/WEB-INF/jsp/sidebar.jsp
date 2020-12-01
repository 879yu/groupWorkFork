<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

 <!-- サイドバー（全ページ固定） -->
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
​
                        <!-- 書籍データを全て表示 -->
                        <li class="nav-item">
                            <a class="nav-link active" href="/groupwork/BookServlet"
					method="get" class="bo_list">登録書籍一覧
                             </a>
                        </li>
​
                        <!-- 貸出中の書籍を表示 -->
                        <li class="nav-item">
                            <a class="nav-link" href="/groupwork/UserServlet"
					method="get" class="em_list">従業員一覧
                            </a>
                        </li>
​
                        <!-- 返却 -->
                        <li class="nav-item">
                            <a class="nav-link" href="/groupwork/LendServlet"
					method="get" class="le_bo_list">貸し借り履歴一覧
                            </a>
                        </li>
​
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="users"></span>
                                <i class="far fa-comment-dots"></i>
                                　購入をリクエストを送る
                            </a>
                        </li> -->
​
                    </ul>
                </div>
</nav>