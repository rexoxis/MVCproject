<%@ page contentType="text/html; charset=UTF-8"%>
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
        <div style="padding: 20px 0"><i class="fa fa-comments fa-2x">자유 게시판</i> </div>

        <!--버튼-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-6">
                <h4><i class="fa fa-pen-square"></i>수정하기</h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
            </div>
        </div>

        <!--새글쓰기-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="title">제목</label>
                    <input type="text" id="title" class="form-control col-9" value="장바구니 멘 시의원 처음 보셨나요?">
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="contents">본문내용</label>
                    <textarea rows="20" type="text" id="contents" class="form-control col-9">수능일이면 찾아오는 거짓말 같은 추위에 몸이 잔뜩 움츠러듭니다.

그래도 날이 추운 게 중요한가요.

몇 시간 뒤면 자유를 누릴 수 있는 수험생들을 위해서 오늘의 선곡은 에픽하이의 fly입니다.

오늘은 SNS에서도 수험생들을 응원하는 글들이 눈에 굉장히 많이 띄더라고요.

'와 진짜 추워도 너무 춥네, 수험생들 어깨 피고 화이팅!'이라고 해 주셨습니다.

맑은 하늘에 낮으로 갈수록 기온이 풀릴 만도 한데 오늘은 종일 춥습니다.

오늘 아침 기온으로 서울은 영하 2.5도로 올가을 들어 가장 낮은 기온을 기록했는데요.

점심시간에도 4도까지 오르는 데 그쳐 춥겠고요.

수능이 끝날 무렵인 저녁 6시에도 3도 선에 머무르겠습니다.

'비 오고 겨울이 훌쩍 와버린 듯 해요.' 어제 비가 제법 요란히 내리고 난 뒤 날이 정말 급격하게 추워졌죠.

지금 은 하늘 대체로 맑은데요.

내일 중부지방은 다시 하늘빛이 흐려져서 새벽부터 비가 내리기 시작합니다.

양은 5mm 내외로 많지는 않지만 종일 오락가락하겠고요.

또 기온이 낮은 경기 동부와 영서, 강원 산지에는 눈이 내려 쌓이겠습니다.

내일부터는 기온이 오름세로 돌아서면서 다시 일교차 큰 늦가을 날씨를 되찾겠습니다.

하지만 일요일과 월요일에 걸쳐서 전국에 한 차례 비가 더 내리겠고요.

다시 영하권의 매서운 추위가 찾아오면서 기온이 오르락내리락하겠습니다.</textarea>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right" for="captcha">자동 입력방지</label>
                    <img src="../../../../../Web1911/img/captchav1.png" width="50%" style="margin-bottom: 10px">
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
<script src="../../js/loginfrm.js"></script>

<script>
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='join/agree.jsp';});
    });
    $(function() {
        $('#listbtn').on('click',function(e) {location.href='list.jsp';});
    });
    $(function() {
        $('#newbtn').on('click',function(e) {location.href='list.jsp';});
    });
    $(function() {
        $('#cbtn').on('click',function(e) {location.href='list.jsp';});
    });
</script>
</body>
</html>