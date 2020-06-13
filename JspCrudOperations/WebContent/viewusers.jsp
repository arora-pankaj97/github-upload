<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result List</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
   font-size:25px;
}
a{
text-decoration:none;

}
th {
  background-color: #4CAF50;
  color: white;
  font-size:30px;
}

tr:hover {background-color:#f5f5f5;}
</style>
</head>
<body>

<%@page import="com.liferay.dao.UserDao,com.liferay.bean.*,java.util.*" %>


<h1>Users List</h1>
<%

List<Bean> list=UserDao.getAllRecords();

%>


<table border="1" width="90%" padding>
<tr><th>Id**</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>

<%

for(Bean u:list)
{
	

%>
<tr><td><%=u.getId() %></td><td><%=u.getName() %></td><td><%=u.getPassword() %></td><td><%=u.getEmail() %></td><td><%=u.getSex() %></td><td><%=u.getCountry() %></td><td><a href="edituserform.jsp?id=<%=u.getId() %>">Edit</a></td><td><a href="deleteuser.jsp?id=<%=u.getId() %>">Delete</a></td></tr>


<%
} 
%>
</table>


<br><a href="adduserform.jsp">Add new User</a>
</body>
</html>