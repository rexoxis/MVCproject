<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>

    <title>부트스트랩4 : list</title>
</head>
<body>
<div class="container">
    <%@include file="../layout/header.jsp" %>
    <!--메인-->
    <div id="main">
        <div style="padding: 20px 0"><i class="fa fa-comments fa-2x">자유 게시판</i></div>

        <!--버튼-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-12 text-right">
                <button type="button" class="btn btn-light" id="newbtn"><i class="fa fa-plus-circle"></i> 새글쓰기</button>
            </div>
        </div>

        <!--게시판 목록-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-12">
                <table class="table table-striped"
                       style="border-top: 2px solid #000000; border-bottom: 2px solid #000000">
                    <!--게시판 상단 제목-->
                    <thead style="background-color: #dff0d8">
                    <tr>
                        <th style="width:7%">번호</th>
                        <th>제목</th>
                        <th style="width:10%">작성자</th>
                        <th style="width:10%">작성일</th>
                        <th style="width:7%">추천</th>
                        <th style="width:7%">조회</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr style="color: #ff0000">
                        <th>공지</th>
                        <th><span class="badge badge-danger">Hot</span> 다크나이트 라이지즈 예매권 증정 이벤트 시작!!</th>
                        <th>운영자</th>
                        <th>2019.07.15</th>
                        <th>35</th>
                        <th>1000</th>
                    </tr>
                    <c:forEach var="b" items="${bds}">
                        <tr>
                            <td>${cnt}</td>
                                <%--데이터베이스에서 프라이머리 키로 지정되있는 값을 넘겨줘야함--%>
                            <td><a href="/board/view?id=${b.bdid}" style="color: #000000">${b.subject}</a>
                            </td>
                            <td>${b.writer}</td>
                            <td>${fn:substring(b.regdate,0,10)}</td>
                            <td>${b.thumbs}</td>
                            <td>${b.views}</td>
                        </tr>
                        <c:set var="cnt" value="${cnt-1}"/>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <!--페이지 네이션-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-12">
                <nav>
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled"><a href="#" class="page-link">이전</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">6</a></li>
                        <li class="page-item"><a href="#" class="page-link">7</a></li>
                        <li class="page-item"><a href="#" class="page-link">8</a></li>
                        <li class="page-item"><a href="#" class="page-link">9</a></li>
                        <li class="page-item"><a href="#" class="page-link">10</a></li>
                        <li class="page-item"><a href="#" class="page-link">다음</a></li>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!--풋터-->
    <%@include file="../layout/footer.jsp" %>
</div>
<%@include file="../layout/modal.jsp" %>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="/resources/js/loginfrm.js"></script>

<script>
    $(function () {
        $('#joinbtn').on('click', function (e) {
            location.href = '/join/agree';
        });
    });

    $(function () {
        $('#newbtn').on('click', function (e) {
            location.href = '/board/write';
        });
    });
</script>
</body>
</html>