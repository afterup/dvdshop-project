<%@page import="com.movie.model.vo.MovieInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<!-- Navigation -->
	<%@ include file="/view/common/header.jsp"%>

	<!-- main-->
	<div class="container-fluid">
		<h3 class="text-center">대여한 영화</h3>
		<hr class="light">
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">영화번호</th>
					<th scope="col">영화명</th>
					<th scope="col">대여일</th>
					<th scope="col">반납</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${rentalList }" var="rental">
					<tr>
						<th scope="row">${rental.RENTID }</th>
						<td>${rental.MOVIEID }</td>
						<td>${rental.MOVIENM }</td>
						<td>${rental.RENTDATE}</td>
						<td>
						<c:choose>
							<c:when test="${rental.RETURNYN.equals('N')}">
								<a href="movie?action=return&rentid=${rental.RENTID }&movieid=${rental.MOVIEID}" class="btn btn-primary">반납</a>
							</c:when>
							<c:otherwise>
								<button class="btn" disabled>완료</button>
							</c:otherwise>
						</c:choose>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<!-- Footer -->
	<%@ include file="/view/common/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
</body>


</html>