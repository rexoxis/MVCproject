<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    request.setCharacterEncoding("utf-8");
%>
<c:set var="mb" value="${sessionScope.mb}"/>

<c:set var="addr1" value="${fn:split(mb.addr,' ')[0]}"/>
<c:set var="addr2" value="${fn:split(mb.addr,' ')[1]}"/>
<c:set var="email1" value="${fn:split(mb.email,'@')[0]}"/>
<c:set var="tel1" value="${fn:split(mb.hp,'-')[1]}"/>
<c:set var="tel2" value="${fn:split(mb.hp,'-')[2]}"/>

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 : joinmember</title>
</head>
<body>
<div class="container">
    <%@include file="../layout/header.jsp"%>
    <!--메인-->
    <div id="main">
        <div style="padding: 20px 0"><i class="fa fa-users fa-2x">회원가입</i> </div>

        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item active"><span class="badge badge-success" style="padding: 5px">이용약관</span></li>
                <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">실명확인</span></li>
                <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">정보입력</span></li>
                <li class="breadcrumb-item"><span class="badge badge-light" style="padding: 5px">가입완료</span></li>
            </ul>
        </nav>

        <div style="margin: 50px 0 20px 0">
            <h2>회원정보 입력</h2>
            <small class="text-muted">회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.</small>
        </div>

        <div class="card card-body bg-light" style="margin: 10px 30px 20px 50px">

            <h3>일반회원</h3>

            <form name="joinmemberfrm" method="post">
                <div class="row"  style="margin-top: 30px">
                    <div class="col"></div>
                    <div class="col-11">

                            <!--이름-->
                            <div class="form-group row">
                                <label for="name" class="col-2 col-form-label text-right">이름</label>
                                <input type="text" id="name" name="name" class="form-control col-2" readonly value="김길동">
                            </div>

                            <!--주민번호-->
                            <div class="form-group row">
                                <label for="jumin1" class="col-2 col-form-label text-right">주민번호</label>
                                <input type="text" id="jumin1" name="jumin1" class="form-control col-2" readonly value="920519">
                                <label class="col-form-label">&dash;</label>
                                <input type="password" id="jumin2" name="jumin2" class="form-control col-2" readonly value="1029814">
                            </div>

                            <!--아이디-->
                            <div class="form-group row">
                                <label for="userid" class="col-2 col-form-label text-right">아이디</label>
                                <input type="text" id="userid" name="userid" maxlength="16" class="form-control col-3" value="${mb.userid}">
                                <label class="col-form-label col-7">6~16자의 영문 소문자, 숫자와 특수기호만 사용할 수 있습니다.</label>
                            </div>

                            <!--비밀번호-->
                            <div class="form-group row">
                                <label for="joinpwd" class="col-2 col-form-label text-right">비밀번호</label>
                                <input type="password" id="joinpwd" name="joinpwd" maxlength="16" class="form-control col-3">
                                <label class="col-form-label col-7">6~16자의 영문 대소문자, 숫자와 특수기호만 사용할 수 있습니다.</label>
                            </div>

                            <!--비밀번호 확인-->
                            <div class="form-group row">
                                <label for="chjoinpwd" class="col-2 col-form-label text-right">비밀번호 확인</label>
                                <input type="password" id="chjoinpwd" name="chjoinpwd" maxlength="16" class="form-control col-3">
                                <label class="col-form-label col-7">비밀번호를 한번 더 입력해주세요.</label>
                            </div>

                            <!--우편번호-->
                            <div class="form-group row">
                                <label for="zip1" class="col-2 col-form-label text-right">우편번호</label>
                                <input type="text" id="zip1" name="zip1" class="form-control col-1" readonly value="123">&nbsp;
                                <label class="col-form-label">&dash;</label>&nbsp;
                                <input type="text" id="zip2" name="zip2" class="form-control col-1" readonly value="213">&nbsp;&nbsp;
                                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#zipcode"><i class="fa fa-question-circle"></i> 우편번호 찾기</button>
                            </div>

                            <!--주소-->
                            <div class="form-group row">
                                <label for="addr1" class="col-2 col-form-label text-right">주소</label>
                                <input type="text" id="addr1" name="addr1" class="form-control col-4" value="${addr1}">&nbsp;
                                <input type="text" id="addr2" name="addr2" class="form-control col-4" value="${addr2}">
                            </div>

                            <!--전자우편 주소-->
                            <div class="form-group row">
                                <div class="input-group">
                                    <label class="col-form-label col-2 text-right" for="email1">전자우편 주소</label>
                                    <input type="text" id="email1" name="email1" class="form-control col-2" value="${email1}">
                                    <div class="input-group-append"><span class="input-group-text">@</span></div>
                                    <input type="text" id="email2" name="email2" class="form-control col-2" readonly>&nbsp;

                                    <select class="form-control col-2" id="sendemail" name="sendemail" >
                                        <option>선택하세요</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="daum.net">daum.net</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="myemail">직접 입력</option>
                                    </select>
                                </div>
                            </div>

                            <!--개인 연락처-->
                            <div class="form-group row">
                                <label for="hp1" class="col-2 col-form-label text-right">개인 연락처</label>
                                <select id="hp1" name="tel1" class="form-control col-1"><option>국번</option><option>010</option><option>011</option><option>017</option></select>&nbsp;
                                <label class="col-form-label">&dash;</label>&nbsp;
                                <input type="text" id="hp2" name="tel2" class="form-control col-1" value="${tel1}">&nbsp;
                                <label class="col-form-label">&dash;</label>&nbsp;
                                <input type="text" id="hp3" name="tel3" class="form-control col-1" value="${tel2}">
                            </div>

                            <!--자동 가입방지-->
                            <div class="form-group row">
                                <label for="capcha" class="col-form-label col-2">자동 가입방지</label>
                                <iframe src="/join/showcaptcha" frameborder="0" scrolling="no"></iframe>
                                <input type="text" id="capcha" name="cap" class="form-control col-4">&nbsp;
                                <div id="capmsg" style="color: #ff0000">${capmsg}</div>
                                <button type="button" class="btn btn-dark"><i class="fa fa-recycle"></i>다른 capcha보기</button>
                            </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 85px">
                    <div class="col-12 text-center">
                         <button type="button" id="newjoinbtn" class="btn btn-primary"><i class="fa fa-check"> 입력완료</i></button>
                         <button type="button" class="btn btn-danger"><i class="fa fa-times"> 취소하기</i></button>
                    </div>
                </div>

            </form>
        </div>
    </div>

    <!--풋터-->
    <%@include file="../layout/footer.jsp"%>

</div>
<%@include file="../layout/modal.jsp"%>

<!--우편번호 찾기 모달창-->
<div id="zipcode" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">우편번호 찾기</h3>
                <button type="button" class="btn btn-light" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row" style="margin-top: 10px">
                        <div class="col-1"></div>
                        <div class="col-3">
                            <label fo="dong" class="text-right" style="margin-top: -5px">검색하실 주소의<br>동 이름을 입력하세요</label>
                        </div>
                        <div class="col-4">
                            <input type="tel" id="dong" class="form-control">
                        </div>
                        <div class="col-3">
                            <button type="button" class="btn btn-primary"><i class="fa fa-search"></i> 검색하기</button>
                        </div>
                        <div class="col-1"></div>
                    </div>

                    <hr class="my-3">
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-10">
                            <p>지역의 읍/면/동의 이름을 공백없이 입력하신 후 [검색] 버튼을 클릭하세요</p>
                            <select id="ziplist" size="5" class="form-control col-11">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>
                        <div class="col"></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger">선택하고 닫기</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/resources/js/loginfrm.js"></script>
<script src="/resources/js/joinfrmcheck.js"></script>

<script>
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='/join/agree';});
    });

    $(function() {
        $('#newjoinbtn').on('click',joinfrmcheck)
    });

</script>
</body>
</html>