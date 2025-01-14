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
<!-- 부트스트랩 css-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- 사용자 css-->
<link rel="stylesheet" href="css/style.css">
</head>
<script>
	
	function checkid(){
		console.log('check');
		if("${id}" == ""){
			console.log('${id}');
			alert('로그인이 필요합니다.');
		}else {
			location.href='movie?action=rental&no=${movie.MOVIEID}';
		}
	}
</script>

<body>
	<!-- Navigation -->
	<%@ include file="/view/common/header.jsp" %>


	<!-- main-->
	<div class="card m-4" style="max-width: 2000px;">
		<div class="row no-gutters">
			<div class="col-md-3">
				<img src="${pageContext.request.contextPath}/img/${movie.MOVIEIMG}"
					class="card-img" alt="${movie.MOVIENM }">
			</div>
			<div class="col-md-8">
				<div class="card-body">
					<h2 class="card-title">${movie.MOVIENM }</h2>
					<p class="card-text">${movie.MOVIEDESC }</p>
					<p class="card-text">현재 DVD수량: ${movie.DVDAMOUNT }개</p>
					<c:choose>
						<c:when test="${movie.DVDAMOUNT >0}">
							<button onclick="checkid()"class="btn btn-primary">대여</button>
						</c:when>
						<c:otherwise>
							<button
								class="btn btn-default" disabled>대여불가</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="/view/common/footer.jsp" %>

	<!-- 부트스트랩 -->
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