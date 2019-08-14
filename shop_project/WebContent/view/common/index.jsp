<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<!-- Navigation -->
	<%@ include file="/view/common/header.jsp"%>

	<!-- Image Slider-->
	<div id="slides" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li class="active" data-target="#slides" data-slide-to="0"></li>
			<li data-target="#slides" data-slide-to="1"></li>
			<li data-target="#slides" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/img/aladdin.jpeg"
					alt="">
				<div class="carousel-caption">
					<button type="button" class="btn btn-info btn-lg"
						onclick="window.open('https://www.youtube.com/watch?v=foyufD52aog')">Movie
						Trailer</button>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/img/avengers.jpg"
					alt="">
				<div class="carousel-caption">
					<button type="button" class="btn btn-info btn-lg"
						onclick="window.open('https://www.youtube.com/watch?v=-Cf_danXjrY')">Movie
						Trailer</button>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/img/lionking.jpeg"
					alt="">
				<div class="carousel-caption">
					<button type="button" class="btn btn-info btn-lg"
						onclick="window.open('https://www.youtube.com/watch?v=7TavVZMewpY')">Movie
						Trailer</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Jumbotron-->
	<div class="container-fluid">
		<div class="row jumbotron">
			<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
				<p class="lead">Lorem ipsum dolor sit amet consectetur,
					adipisicing elit. Perspiciatis ad saepe ducimus nulla dolorum</p>
			</div>
		</div>
	</div>

	<%
		if (id != null && id.equals("admin")) {
	%>
	<div class="container text-center">
		<a class="btn btn-danger" href="admin">Admin</a>
	</div>
	<%
		}
	%>

	<!-- Trend Movie-->
	<div class="container-fluid padding">
		<div class="row text-center">
			<div class="col-12">
				<h2 class="display-4">Trend Movie</h2>
				<hr class="light">
			</div>
		</div>
	</div>
	<div class="cotainer padding">
		<div class="row padding">
			<div class="col-md-4">
				<div class="card">
					<img src="${pageContext.request.contextPath}/img/toystoryPoster.jpg"
						alt="" class="card-img-top">
					<div class="card-body">
						<h4 class="card-title">토이스토리</h4>
						<p class="card-text">우디와 포키를 찾아 세상 밖 위험천만한 모험을 떠나게 되는데...</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="${pageContext.request.contextPath}/img/bongoPoster.jpg"
						alt="" class="card-img-top">
					<div class="card-body">
						<h4 class="card-title">봉오동전투</h4>
						<p class="card-text"> 봉오동 죽음의 골짜기에 묻혔던 이야기가 지금부터 시작된다</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="${pageContext.request.contextPath}/img/avengersPoster.jpg"
						alt="" class="card-img-top">
					<div class="card-body">
						<h4 class="card-title">어벤져스:앤드게임</h4>
						<p class="card-text">운명을 바꿀 최후의 전쟁이 펼쳐진다!</p>
					</div>
				</div>
			</div>
		</div>

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