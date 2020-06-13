<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit form</title>
</head>
<body>
<%@page import="com.liferay.dao.UserDao,com.liferay.bean.Bean" %>

<%

String id=request.getParameter("id");
Bean u=UserDao.getRecordById(Integer.parseInt(id));
%>

<form action="edituser.jsp" method="post">

<input type="hidden" name="id" value="<%=u.getId() %>"/>

<table>
<th><h1 style="text-align:center">Edit Existing User</h1></th>


    <tr>
        <td> Name:</td>
        <td><input type="text" name="name" value="<%=u.getName() %>"/></td>
    </tr>
    
    <tr><td>Password:</td>
    <td><input type="password" name="password" value="<%=u.getPassword() %>"/></td>
    </tr>
    
    
   <tr><td> Email:</td>
   <td><input type="text" name="email" value="<%=u.getEmail() %>"/></td>
   </tr>
   
   <tr><td> Sex:</td>
   <td><input type="radio" name="sex" value="male"/><label for="male">Male</label><input type="radio" name="sex" value="female"/><label for="female">Female</label></td></tr>


   <tr><td> Country:</td><td>
   <select id="country" name="country">
   <option value="india">India</option>
   <option value="brazil">Brazil</option>
   <option value="canada">Canada</option>
   <option value="pakistan">Pakistan</option>
   </select>
   </td></tr>

<tr><td colspan="2"><button class="btn">Edit User</button></td></tr>

</table>
</form>

</body>
</html>