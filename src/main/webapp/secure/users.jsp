<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Secure Area Secret Users Page</title>
</head>
<body>
<h3>Secure Area Users Page</h3>
<p>Since our web site DOES have some security only logged in users can visit this web page because it's in our secure area.</p>
<p>Here is information on our users from the data store:</p>

<c:forEach var="user" items="${userList}">
<p>User ID: ${user.userID} <br />
   Username: ${user.username} <br />
   Password: ${user.password} </p>
</c:forEach>
<p><a href="<c:url value='/index.jsp' />">Home </a> | <a href="<c:url value='/LogoutUser' />">Log Out</a></p>
</body>
</html>