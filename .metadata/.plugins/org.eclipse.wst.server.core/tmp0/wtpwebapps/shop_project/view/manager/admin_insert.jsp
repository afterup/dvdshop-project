<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body id="adminPage">

	<!-- Navigation -->
	<%@ include file="/view/manager/adminHeader.jsp" %>

	<!--  UPDATE -->
	<div class="container">

		<form action="admin?action=insertAction" method="POST" name="frm">
			<div class="form-group">
				<label for="movienm">영화명</label>
					<input type="text" class="form-control" name="movienm">
			</div>
			<div class="form-group">
				<label for="genrenm">영화장르</label> <input type="text"
					 class="form-control" name="genrenm">
			</div>
			<div class="form-group">
				<label for="supervison">영화감독</label> <input type="text"
					 class="form-control" name="supervison">
			</div>
			<div class="form-group">
				<label for="watchgradenm">영화등급</label> <input type="text"
					class="form-control"
					name="watchgradenm">
			</div>
			<div class="form-group">
				<label for="moviedesc">영화설명</label> <input type="text"
					class="form-control" name="moviedesc">
			</div>
			<div class="form-group">
				<label for="dvdamount">DVD 수량</label> <select name="dvdamount">
					<c:forEach begin="1" end="20" var="i">
						<option>${i}</option>
					</c:forEach>
				</select>
			</div>
			<button type="button" onclick="validateCheck()" class="btn btn-primary">추가</button>
			<button type="button" onclick="history.back()" class="btn">취소</button>
		</form>
	</div>
	
	<script src="./js/movieCheck.js"></script>	

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