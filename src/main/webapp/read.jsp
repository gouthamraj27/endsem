<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JFSD</title>
</head>
<body>
<h2>Student Details</h2>
<%@ page import="java.util.*" %>
<%@ page import="model.Student"  %>

<% @SuppressWarnings("unchecked") 
List<Student> slist=(List<Student>)request.getAttribute("Studentlist"); %>
<table border="1">
<tr>
<th>Student ID</th>
<th>Student name</th>
<th>Depeartment</th>
</tr>
<%for(Student S:slist) { %>
<tr>
<td> <%= S.getSid() %></td>
<td><%=S.getSname() %></td>
<td><%=S.getSdept() %></td>
<% } %>
</table>
</body>
</html>