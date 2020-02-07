<%@ page import="java.util.Random" %>
<%@ page import="lsh.spring4mvc.service.Today" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="mbf" class="lsh.spring4mvc.dao.MemberFactory" scope="session"/>
<jsp:useBean id="mb" class="lsh.spring4mvc.vo.Member"/>

<% request.setCharacterEncoding("utf-8"); %>

<%
    // captcha 일치여부 확인
    String mycap = request.getParameter("cap");
    String cap = (String)session.getAttribute("cta");

    System.out.println(mycap + "/" + cap);

    if(!mycap.equals(cap)){

        // 페이지 넘기기전에 이전 폼에서 입력한 정보를 세션에 저장해둠
        response.sendRedirect("joinmember.jsp?error=9");
        return;
    }
%>

<%
    String name = request.getParameter("name");
    String jumin1 = request.getParameter("jumin1");
    String jumin2 = request.getParameter("jumin2");

    String userid = request.getParameter("joinuid");
    String passwd = request.getParameter("joinpwd");

    String addr1 = request.getParameter("addr1");
    String addr2 = request.getParameter("addr2");

    String zip1 = request.getParameter("ziq1");
    String zip2 = request.getParameter("ziq2");
    String email1 = request.getParameter("email1");
    String email2 = request.getParameter("email2");

    String tel1 = request.getParameter("tel1");
    String tel2 = request.getParameter("tel2");
    String tel3 = request.getParameter("tel3");

    String jumin = jumin1 + "-" + jumin2;
    String zipcode = zip1 + "-" + zip2;
    String addr = addr1 + " " + addr2;
    String email = email1 + "@" + email2;
    String hp = tel1 + "-" + tel2 + "-" + tel3;

    Today t = new Today();
    String today = t.getDate()+" "+ t.getTime2();

    Random r = new Random();
    String mbid = (r.nextInt(500)+1)+"";

    mb.setMbrid(mbid);
    mb.setName(name);
    mb.setJumin(jumin);
    mb.setUserid(userid);
    mb.setPasswd(passwd);
    mb.setZipcode(zipcode);
    mb.setAddr(addr);
    mb.setEmail(email);
    mb.setHp(hp);
    mb.setRegdate(today);

    mbf.addMember(mb);

    response.sendRedirect("joinok.jsp");
%>