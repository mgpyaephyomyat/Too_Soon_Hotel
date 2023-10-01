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
<style>
th{
background-color: pink;
}
</style>
</head>
<body>
<h1>Register</h1>
<table>
<tr>
      <th style="background-color: pink; border: 1px solid black; padding: 8px;"> id</th>
      <th style="background-color: pink; border: 1px solid black; padding: 8px;">Name</th>
      <th style="background-color: pink; border: 1px solid black; padding: 8px;">Email</th>
      <th style="background-color: pink; border: 1px solid black; padding: 8px;">Course</th>
    

</tr>
<%
RegisterCRUD rdc = new RegisterCRUD();
ArrayList<Register> rList = rdc.selectall();
for(Register data: rList){
%>
<tr>
 	  <td style="border: 1px solid black; padding: 8px;"><%= data.getId() %></td>
 	  <td style="border: 1px solid black; padding: 8px;"><%= data.getName() %></td>
      <td style="border: 1px solid black; padding: 8px;"><%= data.getEmail() %></td>
      <td style="border: 1px solid black; padding: 8px;"><%= data.getCourses() %></td>
     
 <td style="border: 1px solid black; padding: 8px;"><a href="index_update.jsp?id=<%=data.getId()%>&name=<%=data.getName()%>&email=<%=data.getEmail()%>&course=<%=data.getCourses()%>">Edit</a></td>
  <td style="border: 1px solid black; padding: 8px;"><a href="index_delete.jsp?id=<%=data.getId()%>">Delete</a></td>
</tr>
<%}%>


</table>

</body>
</html>