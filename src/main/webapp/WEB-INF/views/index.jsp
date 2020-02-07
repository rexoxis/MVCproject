<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>


    <link rel="stylesheet" href="/resources/css/base.css">

    <title>부트스트랩4 :index</title>
</head>
<body>
<div class="container">
   <%@include file="layout/header.jsp"%>
    <!--메인-->
    <div id="main">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="display-3" style="margin: 30px 0">草基密 프로젝트 보안계획</h1>
                <img src="/resources/img/popo.jpg" width="75%" style="margin: 30px 0">
                <p>industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of </p>
                <p style="margin: 20px 0;"><button class="btn btn-success">지금 바로 시작하기</button></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>극비</h2>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
            <div class="col-md-4">
                <h2>경고</h2>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't any</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
            <div class="col-md-4"> <h2>오류</h2>
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Vi</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>극비</h2>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
            <div class="col-md-4">
                <h2>경고</h2>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't any</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
            <div class="col-md-4"> <h2>오류</h2>
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Vi</p>
                <p><button class="btn btn-light">자세히 보기&blacktriangleright;</button> </p>
            </div>
        </div>
    </div>
    <%@include file="layout/footer.jsp"%>
</div>
<%@include file="layout/modal.jsp"%>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/resources/js/loginfrm.js"></script>

<script>
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='/join/agree';});
    });

</script>

</body>
</html>