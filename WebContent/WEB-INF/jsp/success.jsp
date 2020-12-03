<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/application.jsp"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>通信結果表示</title>
</head>
<body>
	<div class="succcess_container">
		<h1 class="success">登録が完了しました</h1>
		<a href="/WEB-INF/jsp/admin.jsp" class="return">戻る</a>
	</div>

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
</body>
</html>