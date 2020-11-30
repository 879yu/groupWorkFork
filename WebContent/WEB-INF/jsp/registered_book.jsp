<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="lend_borrow.css">
</head>
<body>
	<h1>貸し借り履歴一覧</h1>
	<table>
		<tr>
			<th>本ID</th>
			<th>貸し借り履歴</th>
		</tr>
		<tr>
			<td></td>
			<td><c:forEach var="book_data" items="${bookList}">
					<span class="title"><c:out value="${book_data.title }" /></span>
					<span class="author"><c:out value="${book_data.author }" /></span>
					<span class="publisher"><c:out value="${book_data.publisher }" /></span>
					<span class="publish_date"><c:out value="${book_data.publishedDate }" /></span>
					<span class="description"><c:out value="${book_data.description }" /></span>
					<img src=<c:out value="${book_data.imageLinks }"/> alt="本画像" class="image_links">
					</td>
			</c:forEach>
		</tr>
	</table>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>