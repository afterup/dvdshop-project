<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- 부트스트랩 css-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- 사용자 css-->
    <link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="./js/validCheck.js" ></script> 
</head>


<body>
    <!-- Navigation -->
	<%@ include file="/view/common/header.jsp" %>

    <!-- main-->

    <div class="container">
        <div class="">
            <div class="panel panel-successs">
                <div class="panel-heading">
                    <h3 class="mb-3 text-center">회원가입</h3>
                </div>
                <div class="panel-body">
                    <form name="frm" action="movie?action=joinAction" method="POST">
                        ID<br>
                        <input type="text" class="form-control mb-4" name="id" placeholder="아이디 5-20자리" autofocus>
                        PASS<br>
                        <input type="password" class="form-control mb-4" name="pass" placeholder="비밀번호 숫자 5-20자리">
                        Pass Check<br>
                        <input type="password" class="form-control mb-4" name="passCK" placeholder="Password Check">
                        Email <br>
                        <input type="text" class="form-control mb-4" name="email" placeholder="example@dvdshop.com">
                        Address <br>
                        <input type="text" class="form-control mb-4" name="address" placeholder="address">
                        <button type="button" class="form-control btn btn-primary" onclick="validateCheck()">가입</button>
                    </form>
                </div>
            </div>
        </div>
    </div>



    <!-- Footer -->
	<%@ include file="/view/common/footer.jsp" %>
	
	
    <!-- 부트스트랩 -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>


</html>