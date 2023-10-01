<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.*" %>
     <%@ page import="com.db.*" %>
   <%@ page import="com.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
int rid = Integer.valueOf(request.getParameter("id"));
RegisterCRUD rdc = new RegisterCRUD();
rdc.delete(rid);
%>
<h1>id <%= rid %> is deleted Successfully</h1>
</body>
</html>