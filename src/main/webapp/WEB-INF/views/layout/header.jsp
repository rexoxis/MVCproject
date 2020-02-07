<%@ page pageEncoding="UTF-8" %>

<%

    // 로그인 여부 확인하는 변수
    boolean islogin = false;
    if (session.getAttribute("smb") != null){
        islogin = true;
    }
%>
<header>
    <!--상단로고와 로그인,회원가입 버튼-->
    <div class="row">
        <div class="col-md-6">
            <h1><a href="/index" style="color: #000000">Lorem Ipsum</a></h1>
        </div>
        <%
            if (islogin){ %>
        <div class="col-md-6 text-right" style="margin: 10px 0">
            <button class="btn btn-danger" type="button" id="logoutbtn">로그아웃</button>
        </div>
        <% } else { %>
        <div class="col-md-6 text-right" style="margin: 10px 0">
            <button class="btn btn-danger" type="button" id="logbtn" data-toggle="modal" data-target="#loginmodal">로그인</button>
            <button class="btn btn-primary" type="button" id="joinbtn">회원가입</button>
        </div>
        <% } %>
    </div>

    <!--메뉴 바-->
    <nav class="nav navbar-expand-md navbar-dark bg-dark">
        <ul class="nav navbar-nav nav-fill w-100">
            <li class="nav-item"><a class="nav-link" href="/intro">프로젝트소개</a></li>
            <li class="nav-item"><a class="nav-link" href="/join/agree">회원가입</a></li>
            <li class="nav-item"><a class="nav-link" href="/board/list">게시판</a></li>
            <li class="nav-item"><a class="nav-link" href="/pds/plist">자료실</a></li>
            <li class="nav-item"><a class="nav-link" href="/gallery/glist">갤러리</a></li>
            <li class="nav-item"><a class="nav-link" href="/admin">관리자</a></li>
        </ul>

    </nav>
</header>