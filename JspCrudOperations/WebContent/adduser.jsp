<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.liferay.dao.UserDao" %>
    <jsp:useBean id="u" class="com.liferay.bean.Bean"></jsp:useBean>
    <jsp:setProperty property="*" name="u"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>

<%
int i=UserDao.save(u);

if(i>0)
{
	response.sendRedirect("adduser-success.jsp");
}
else
{
	response.sendRedirect("adduser-error.jsp");
}



%>


</body>
</html>