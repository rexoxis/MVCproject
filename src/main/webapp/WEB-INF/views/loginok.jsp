<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="lsh.spring4mvc.service.Today" %>

<%

    // 로그인이 안되어있을 경우 로그인 페이지로 전환
    if(session.getAttribute("uid") == null) {
        response.sendRedirect("login.jsp");
    }

    Today t = new Today();
    String logintime = t.getDate() + " " + t.getTime2();
%>

<html>
<head>
    <title>로그인 성공</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<%--동적 include--%>
<%--컴파일 된 결과들을 합쳐서 가져옴--%>
<%@include file="layout/header.jsp"%>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            로그인 성공
        </h1>
    </div>
</div>

<div class="container">
   <p><b><%=uid%></b>님이 접속하신 시간은 <%=logintime%>입니다.</p>
</div>
<hr>
<%@include file="layout/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>

