<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2023
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT</title>
</head>
<body>
<form method="post" action="/users?action=edit">
    <input name="idEdit" value="${user.id}" hidden="hidden">
    <input name="name" value="${user.name}">
    <input name="email" value="${user.email}">
    <input name="country" value="${user.country}">
    <button type="submit">Chinh sua</button>
</form>
</body>
</html>
