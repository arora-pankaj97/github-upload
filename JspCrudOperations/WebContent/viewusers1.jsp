<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Users</title>
</head>
<body>

<%@page import="com.liferay.dao.UserDao,com.liferay.bean.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Users List</h1>

<%
List<Bean> list=UserDao.getAllRecords();
request.setAttribute("list",list);

%>

<table border="1" width="90%">

<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>

<c:forEach items="${list }" var="u">
  <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td></tr>
</c:forEach>

<br><a href="adduserform.jsp">Add new User</a>
</table>



</body>
</html>