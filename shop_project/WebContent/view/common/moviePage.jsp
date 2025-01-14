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
<style>
.card-img-left {
	border-bottom-left-radius: calc(.25rem - 1px);
	border-top-left-radius: calc(.25rem - 1px);
	float: left;
	padding-right: 1em;
	margin-bottom: -1.25em;
}
</style>
</head>

<body>
	<!-- Navigation -->
	<%@ include file="/view/common/header.jsp" %>

	<!-- main-->
	<div class="container-fluid padding">
		<div class="row text-center">
			<div class="col-12">
				<h2 class="display-4">Movie Page</h2>
				<hr class="light">
			</div>
		</div>
	</div>
	
	<div class="row">
		<c:forEach items="${list }" var="movie">
		<div class="col">
			<div class="card" style="width: 18rem;">
				<img class="card-img-left"
					src="${pageContext.request.contextPath}/img/${movie.MOVIEIMG}"
					alt="${movie.MOVIEIMG }">
				<div class="card-body">
					<h5 class="card-title">${movie.MOVIENM }</h5>
					<p class="card-text">${movie.WATCHGRADENM }/${movie.GENRENM }</p>
					<a href="movie?action=movieinfo&no=${movie.MOVIEID }"
						class="btn btn-outline-secondary">정보보기</a>
				</div>
			</div>
		</div>
		</c:forEach>

	</div>



	<!-- Footer -->
	<%@ include file="/view/common/footer.jsp" %>

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