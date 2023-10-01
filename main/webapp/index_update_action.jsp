<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.db.*" %>
     <%@ page import="com.model.*" %>
      <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.valueOf(request.getParameter("id"));
String userName = request.getParameter("name");
String Email = request.getParameter("email");
String Course = request.getParameter("course");

Register r = new Register(id, userName, Email, Course);
RegisterCRUD rdc = new RegisterCRUD();
rdc.update(r);
%>
<h1>Registration form is updated Successfully!</h1>
</body>
</html>