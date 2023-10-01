<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Update index</h1>
<%
int id = Integer.valueOf(request.getParameter("id"));
String userName = request.getParameter("name");
String Email = request.getParameter("email");
String Course = request.getParameter("course");
%>
<form action ="index_update_action.jsp">
<input type="hidden" name ="id" value=<%=id %>>
<label>User Name</label>
<input type = "text" name ="name" value=<%=userName %>>
<br><br>
<label>Email</label>
<input type = "text" name ="email" value=<%=Email %>>
<br><br>
<label>Course</label>
<input type = "text" name ="course" value=<%=Course %>>
<br><br>
<input type="submit" value="Update">
</form>
</body>
</html>