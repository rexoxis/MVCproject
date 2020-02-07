<%@ page contentType="image/png"%>
<%@ page import="lsh.spring4mvc.service.CaptchaUtil" %>
<% CaptchaUtil.getCaptcha(request, response);%>

