<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<td><c:forEach var="book_data" items="${book_dataList}">
					<span class="title"><c:out value="${BookData.title }" /></span>
					<span class="author"><c:out value="${BookData.author }" /></span>
					<span class="publisher"><c:out
							value="${BookData.publisher }" /></span>
					<span class="publish_date">"<c:out
							value="${BookData.publishedDate }" /></span>
					<span class="description">"<c:out
							value="${BookData.description }" /></span>
					<span class="image_links"><c:out
							value="${BookData.imageLinks }" /></span>
					<span class="purchase_date"><c:out
							value="${BookData.purchasedate}" /></span></td>
			</c:forEach>
		</tr>
	</table>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>