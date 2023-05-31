<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Product</title>
</head>
<body>
<form method="post" action="/product?action=add">
    <label for="id">Id</label>
    <input type="number" name="id" id="id">
    <label for="name">Name</label>
    <input type="text" name="name" id="name">
    <label for="price">Price</label>
    <input type="text" name="price" id="price">
    <label for="status">Status</label>
    <input type="text" name="status" id="status">
    <label for="producer">Producer</label>
    <input type="text" name="producer" id="producer">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
