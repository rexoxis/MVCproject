<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lsh.spring4mvc.vo.Member" %>

<jsp:useBean id="mbf" class="lsh.spring4mvc.dao.MemberFactory" scope="session"/>
<jsp:useBean id="mb" class="lsh.spring4mvc.vo.Member" scope="session"/>

<%
    String uid = request.getParameter("userid");
    String pwd = request.getParameter("passwd");
    String goPage = "loginfail.jsp";
    String ispwd = mbf.getPwdByUid(uid);

    if(ispwd != null && ispwd.equals(pwd)){
        Member smb = mbf.getMemberById(uid);
        session.setAttribute("smb", smb);
        goPage = "index.jsp";
    }

//    ArrayList<Member> mbs = mbf.getAllMember();
//
//    for(Member m : mbs) {
//
//        if (m.getUserid() != null && m.getUserid().equals(uid) && m.getPasswd().equals(pwd)) {
//            session.setAttribute("uid", uid);
//            session.setAttribute("pwd", pwd);
////      session.setAttribute("email", email);
//
//            goPage = "loginok.jsp";
//        } else {
//            goPage = "login.jsp?error=1";
//        }
//    }
//
    response.sendRedirect(goPage);

%>