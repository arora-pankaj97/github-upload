<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

table,th,td{

text-align:leftr;
margin:30px;
}

.btn {
  position: relative;
  
  
  background-color: #f1f1f1;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border-radius:50%;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}
body
{
background-image:linear-gradient(to right,#1d976c,#93f9b9);
}
</style>
</head>
<body>


<form action="adduser.jsp" method="post">
<table>
<th><h1 style="text-align:center">Add New User</h1></th>
<tr><td> Name:</td><td><input type="text" name="name" required/></td></tr>
<tr><td> Password:</td><td><input type="password" name="password"required/></td></tr>
<tr><td> Email:</td><td><input type="text" name="email" required/></td></tr>
<tr><td> Sex:</td><td><input type="radio" name="sex" value="male"/><label for="male">Male</label><input type="radio" name="sex" value="female"/><label for="female">Female</label></td></tr>
<tr><td> Country:</td><td><select id="country" name="country">
  <option value="india">India</option>
  <option value="brazil">Brazil</option>
  <option value="canada">Canada</option>
  <option value="pakistan">Pakistan</option>
</select></td></tr>

<tr><td><button class="btn">Add User</button></td></tr>

</table>
</form>
</body>
</html>