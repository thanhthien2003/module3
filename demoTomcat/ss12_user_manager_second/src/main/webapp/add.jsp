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
    <title>Title</title>
</head>
<body>
<form action="/users?action=add" method="post">
    Tên: <input type="text" name="name"><br>
    Email: <input type="text" name="email"><br>
    Quoc gia: <input type="text" name="country"><br>
    <button type="submit">Dong y</button>
</form>
</body>
</html>
