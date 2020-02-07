<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--현재 페이지에서만 사용가능한 변수 --%>
<c:set var="newchar" scope="page" value="
" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 : view</title>
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
                <button type="button" class="btn btn-light" id="prevbtn"><i class="fa fa-chevron-left"></i> 이전게시물</button>
                <button type="button" class="btn btn-light" id="nextbtn"><i class="fa fa-chevron-right"></i> 다음게시물</button>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="newbtn"><i class="fa fa-plus-circle"></i> 새글쓰기</button>
            </div>
        </div>

        <!--게시글 본문-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <table class="table">
                <tr style="border-bottom: 2px solid #000000">
                    <th colspan="2" class="text-xl-center" style="background-color: #dff0d8">
                        <h3>${b.subject}</h3>
                    </th>
                </tr>

                <tr style="background-color: #ccff99">
                    <td>${b.writer}</td>
                    <td class="text-right">${b.regdate} / ${b.views}</td></tr>

                <tr style="background-color: #ffffcc">
                    <td colspan="2" style="border-bottom: 2px solid #000000o">
                        <%--줄바꿈을 인식하게 하기위해 \n을 br태그로 바꿈--%>
                        ${fn:replace(b.contents, newchar, "<br>") }
                    </td>
                </tr>
            </table>
        </div>

        <!--버튼-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-6">
                <button type="button" class="btn btn-warning" id="updatebtn"><i class="fa fa-pencil-alt"></i> 수정하기</button>
                <button type="button" class="btn btn-danger" id="deletebtn"><i class="fa fa-trash"></i> 삭제하기</button>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
            </div>
        </div>

        <!--댓글-->
        <div class="row" style="margin: 70px 30px 20px 50px">
            <h3><i class="fa fa-comment-dots"></i> 나도 한마디</h3>
            <table class="table" style="border-top: 2px solid #000000; border-bottom: solid #000000">
                <tr style="border-bottom: 2px solid #000000">
                    <td style="width: 25%"><h4>dltmdgns</h4></td>
                    <td>
                        <div style="background-color: yellow; padding: 5px" >2019.11.12 20:41:23</div>
                        <p style="padding: 5px">지금도 등골브레이커 맞습니다.<br>애들 레고 요육센터인가 보낼려다가 학원비는 둘째치고<br>
                        재료비에서 깜놀...<br><br>그냥 작은거 사다가 놀고 있습니다.</p>
                        <!--대댓글 부분-->
                        <ul style="list-style: none; margin-left: -40px">
                            <li>
                                <div style="background-color: #00ff00; height: 30px; padding: 3px">
                                    <span style="font-weight: bold">dltmdgns23</span>
                                    <span style="float: right">2019.11.13 21:40:34</span>
                                </div>
                                <p style="padding: 5px">정말인가요? 우와 심하네..</p>
                            </li>
                        </ul>
                    </td>
                </tr>

                <tr style="border-bottom: 2px solid #000000">
                    <td style="width: 25%"><h4>dltmdgns</h4></td>
                    <td>
                        <div style="background-color: yellow; padding: 5px" >2019.11.12 20:41:23</div>
                        <p style="padding: 5px">지금도 등골브레이커 맞습니다.<br>애들 레고 요육센터인가 보낼려다가 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>그냥 작은거 사다가 놀고 있습니다.</p>
                    </td>
                </tr>

                <tr style="border-bottom: 2px solid #000000">
                    <td style="width: 25%"><h4>dltmdgns</h4></td>
                    <td>
                        <div style="background-color: yellow; padding: 5px" >2019.11.12 20:41:23</div>
                        <p style="padding: 5px">지금도 등골브레이커 맞습니다.<br>애들 레고 요육센터인가 보낼려다가 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>그냥 작은거 사다가 놀고 있습니다.</p>
                    </td>
                </tr>

                <tr style="border-bottom: 2px solid #000000">
                    <td style="width: 25%"><h4>dltmdgns</h4></td>
                    <td>
                        <div style="background-color: yellow; padding: 5px" >2019.11.12 20:41:23</div>
                        <p style="padding: 5px">지금도 등골브레이커 맞습니다.<br>애들 레고 요육센터인가 보낼려다가 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>그냥 작은거 사다가 놀고 있습니다.</p>
                        <ul style="list-style: none; margin-left: -40px">
                            <li>
                                <div style="background-color: #00ff00; height: 30px; padding: 3px">
                                    <span style="font-weight: bold">dltmdgns23</span>
                                    <span style="float: right">2019.11.13 21:40:34</span>
                                </div>
                                <p style="padding: 5px">정말인가요? 우와 심하네..</p>
                            </li>
                        </ul>
                    </td>
                </tr>

                <tr>
                    <td style="width: 25%"><h4>dltmdgns</h4></td>
                    <td>
                        <div style="background-color: yellow; padding: 5px" >2019.11.12 20:41:23</div>
                        <p style="padding: 5px">지금도 등골브레이커 맞습니다.<br>애들 레고 요육센터인가 보낼려다가 학원비는 둘째치고<br>
                            재료비에서 깜놀...<br><br>그냥 작은거 사다가 놀고 있습니다.</p>
                        <ul style="list-style: none; margin-left: -40px">
                            <li>
                                <div style="background-color: #00ff00; height: 30px; padding: 3px">
                                    <span style="font-weight: bold">dltmdgns23</span>
                                    <span style="float: right">2019.11.13 21:40:34</span>
                                </div>
                                <p style="padding: 5px">정말인가요? 우와 심하네..</p>
                            </li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>

        <!--댓글쓰기-->
        <div class="row" style="margin: 10px 30px 20px 50px">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label style="margin: auto">로그인하세요</label>
                    <textarea rows="10" class="form-control col-7" id="comment" style="margin-bottom: -15px"></textarea>
                    <button type="button" class="btn btn-dark" id="cmtbtn" style="margin: auto"><i class="fa fa-comment"></i>댓글쓰기</button>
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
        $('#newbtn').on('click',function(e) {location.href='/board/write';});
    });
    $(function() {
        $('#listbtn').on('click',function(e) {location.href='/board/list';});
    });
    $(function() {
        $('#updatebtn').on('click',function(e) {location.href='/board/update';});
    });
    $(function() {
        $('#deletebtn').on('click',function(e) {
            if(confirm("정말로 삭제하시겠습니까?"))
                alert('삭제되었습니다.');});
    });
</script>
</body>
</html>