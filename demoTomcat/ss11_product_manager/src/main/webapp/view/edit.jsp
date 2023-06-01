<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2023
  Time: 1:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<form method="post" action="/product?action=edit&idEdit=${productEdit.id}">
    <label for="name">Name</label>
    <input type="text" name="name" id="name" value="${productEdit.name}">
    <label for="price">Price</label>
    <input type="text" name="price" id="price" value="${productEdit.price}">
    <label for="status">Status</label>
    <input type="text" name="status" id="status" value="${productEdit.status}">
    <label for="producer">Producer</label>
    <input type="text" name="producer" id="producer" value="${productEdit.producer}">
    <button type="submit">Confirm</button>
    <a href="/product">Back</a>
</form>
</body>
</html>
