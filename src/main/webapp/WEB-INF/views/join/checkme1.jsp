<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 : checkme1</title>
</head>
<body>
<div class="container">
    <%@include file="../layout/header.jsp"%>
<!--메인-->
<div id="main">
<div style="padding: 20px 0"><i class="fa fa-users fa-2x">회원가입</i> </div>

<nav aria-label="breadcrumb">
    <ul class="breadcrumb">
        <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">이용약관</span></li>
        <li class="breadcrumb-item active"><span class="badge badge-success" style="padding: 5px">실명확인</span></li>
        <li class="breadcrumb-item"><span class="badge badge-light" style="padding: 5px">정보입력</span></li>
        <li class="breadcrumb-item"><span class="badge badge-light" style="padding: 5px">가입완료</span></li>
    </ul>
</nav>

<div style="margin: 50px 0 20px 0">
    <h2>가입인증</h2>
    <small class="text-muted">외원으로 가입하는 방법에는 2가지 방법이 있습니다. 아래에서 원하는 방법을 선택해주세요<br>
        입력하신 정보는 가입완료 전까지 본사이트에 저장되지 않습니다.</small>
</div>

<div class="card card-body bg-light" style="margin: 10px 30px 20px 50px">
    <h3 style="padding: 0 0 15px 0">회원가입</h3>
    <form>
        <div class="row">
            <div class="col"></div>
            <div class="col-5">
                <!--이름입력-->
                <div class="form-group row">
                    <label for="name" class="col-4 col-form-label">이름</label>

                    <input type="text" id="name" class="col-6 form-control">
                </div>
                <!--생년월일 입력-->
                <div class="form-group row">
                    <label for="byear" class="col-4 col-form-label">생년월일</label>

                    <select id="byear" class="form-control col-3"><option>년도</option><option>2019</option><option>2018</option></select>&nbsp;
                    <select id="bmonthr" class="form-control col-2"><option>월</option><option>01</option><option>02</option></select>&nbsp;
                    <select id="bday" class="form-control col-2"><option>일</option><option>01</option><option>02</option></select>
                </div>
                <!--성별 입력-->
                <div class="form-group row">
                    <label for="male" class="col-4">성별</label>

                    <div class="custom-control custom-radio" style="margin-right: 10px">
                        <input type="radio" id="male" name="gender" class="custom-control-input" value="m">
                        <label for="male" class="custom-control-label">남자</label>
                    </div>

                    <div class="custom-control custom-radio">
                        <input type="radio" id="fmale" name="gender" class="custom-control-input" value="w">
                        <label for="fmale" class="custom-control-label">여자</label>
                    </div>
                </div>
            </div>

            <div class="col-5">
                <ul>
                    <li>주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다.</li>
                    <li>이름, 생년월일과 성별을 <span style="color: #ff0000">추후 변결할 수 있습니다.</span></li>
                    <li><span style="color: #ff0000">휴대폰 가입인증</span>을 하셔야 공개 게시판 이용이 가능합니다.</li>
                </ul>
            </div>
            <div class="col"></div>

        </div>
        <div class="row">
            <div class="col-12 text-center">
                <button class="btn btn-primary" type="button" id="checkbtn"><i class="fa fa-check"> 확인하기</i></button>
                <button class="btn btn-danger" type="button"><i class="fa fa-times"> 취소하기</i></button>
            </div>
        </div>
    </form>

</div>

<div class="card card-body bg-light" style="margin: 10px 30px 20px 50px">
        <h3 style="padding: 0 0 15px 0">실명확인 회원가입</h3>
        <form>
            <div class="row">
                <div class="col"></div>
                <div class="col-5" style="margin-top: 30px">
                    <!--이름입력-->
                    <div class="form-group row">
                        <label for="name2" class="col-4 col-form-label">이름</label>

                        <input type="text" id="name2" class="col-6 form-control">
                    </div>
                    <!--주민번호입력-->
                    <div class="form-group row">
                        <label for="jumin1" class="col-4 col-form-label">주민번호</label>
                        <input type="text" id="jumin1" class="form-control col-3">&nbsp;
                        <label class="col-form-label">&mdash;</label>&nbsp;
                        <input type="text" id="jumin2" class="form-control col-3">
                    </div>
                    <!--주민번호 수집동의 체크박스-->
                    <div class="form-group row">
                        <label class="col-form-label col-4"></label>

                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" id="usejm" class="custom-control-input" value="1">
                            <label for="usejm" class="custom-control-label">주민등록번호 처리에 동의합니다.</label>
                        </div>
                    </div>
                </div>

                <div class="col-5">
                    <ul>
                        <li>실명확인 회원가입시 공개 게시판 이용이 가능합니다.</li>
                        <li>타인의 주민등록번호를 임의로 사용하면<span style="color: #ff0000"> '주민등록법'에 의해 3년이하의 징역 또는 1천만원 이하의 벌금</span>이 부과 될 수 있습니다.</li>
                        <li>입력하신 주민등록번호는 <span style="color: #ff0000">별도 저장하지 않으며, 신용평가기관을 통한 실명확인용</span>으로만 이용합니다.</li>
                        <li>개인정보보호법에 따라 <span style="color: #ff0000">이용 동의</span>를 받습니다.</li>
                    </ul>
                </div>
                <div class="col"></div>

            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <button class="btn btn-primary" type="button" id="checkbtn2"><i class="fa fa-check"> 확인하기</i></button>
                    <button class="btn btn-danger" type="button"><i class="fa fa-times"> 취소하기</i></button>
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
<script src="/resources/js/loginfrm.js"></script>

<script>
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='/join/agree';});
    });
    $(function() {
        $('#checkbtn').on('click',function(e) {location.href='/join/checkme2';});
    });
    $(function() {
        $('#checkbtn2').on('click',function(e) {location.href='/join/checkme2';});
    });
</script>
</body>
</html>