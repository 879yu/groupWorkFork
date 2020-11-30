<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録書籍一覧</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="registared_book.jsp">
</head>
<body>
	<h1>登録書籍一覧</h1>
	<table>
		<tr class="book_info">
			<th>本ID</th>
			<th>登録した本</th>
		</tr>
		<tr class="detail_info">
			<td></td>
			<td><c:forEach var="book_data" items="${bookList}">
						<span class="title"><c:out value="${book_data.title }" /></span>
					<span class="author"><c:out value="${book_data.author }" /></span>
					<span class="publisher"><c:out value="${book_data.publisher }" /></span>
					<span class="publish_date"><c:out
							value="${book_data.publishedDate }" /></span>
					<span class="description"><c:out
							value="${book_data.description }" /></span>
					<span class="image_links"><c:out
							value="${book_data.imageLinks }" /></span></td>
			</c:forEach>
		</tr>
	</table>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>