<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2023
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Customer</title>
</head>
<body>
<%--this.id = id;--%>
<%--this.name = name;--%>
<%--this.email = email;--%>
<%--this.address = address;--%>
    <form method="post" action="/ControlerCustomerServlet?action=add">
        <label for="id">Id</label>
        <input type="number" name="id" id="id">
        <label for="name">Name</label>
        <input type="text" name="name" id="name">
        <label for="email">Email</label>
        <input type="text" name="email" id="email">
        <label for="address">Address</label>
        <input type="text" name="address" id="address">
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
