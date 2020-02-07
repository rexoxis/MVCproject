<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 : write</title>
</head>
<body>
<div class="container">
    <%@include file="../layout/header.jsp"%>
    <!--메인-->
    <div id="main">
        <div style="padding: 20px 0"><i class="fa fa-upload fa-2x">자료실</i> </div>

        <!--버튼-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-6">
                <h4><i class="fa fa-plus-circle"></i>새글쓰기</h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
            </div>
        </div>

        <!--새글쓰기-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <form class="card card-body bg-light" name="pdsfrm" method="post" enctype="multipart/form-data">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="title">제목</label>
                    <input type="text" id="title" name="psubject" class="form-control col-9">
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="contents">본문내용</label>
                    <textarea rows="20" type="text" id="contents" name="pcontents" class="form-control col-9"></textarea>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="contents">파일첨부</label>
                    <input type="file" name="file1">
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="captcha">자동 입력방지</label>
                    <img src="/resources/img/captchav1.png" width="50%" style="margin-bottom: 10px">
                    <input type="text" id="captcha" class="form-control col-3" style="margin-left: 170px">&nbsp;
                    <button type="button" class="btn btn-dark"><i class="fa fa-recycle"></i> 다른 그림보기</button>
                </div>
                <div class="form-group row">
                    <div class="col-12 text-center" style="border-top: 2px solid #000000; margin-top: 35px; padding-top: 25px ">
                        <button type="button" class="btn btn-primary" id="newbtn"><i class="fa fa-check"> 입력완료</i></button>
                        <button type="button" class="btn btn-danger" id="cbtn"><i class="fa fa-times"> 취소하기</i></button>
                    </div>
                </div>
            </form>
        </div>


    </div>

    <!--풋터-->
    <%@include file="../layout/footer.jsp"%>

</div>
<%@include file="../layout/modal.jsp"%>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/resources/js/pdsfrmcheck.js"></script>
<script src="/resources/js/loginfrm.js"></script>

<script>
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='/join/agree';});
    });
    $(function() {
        $('#listbtn').on('click',function(e) {location.href='/pds/plist';});
    });

    $(function() {
        $('#cbtn').on('click',function(e) {location.href='/pds/plist';});
    });
</script>
</body>
</html>