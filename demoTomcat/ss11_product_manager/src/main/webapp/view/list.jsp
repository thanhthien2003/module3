<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h1>List Product</h1>
<table border="1px">
    <thead>
    <th>id</th>
    <th>Name product</th>
    <th>Price product</th>
    <th>Status</th>
    <th>Producer</th>
    <th>Delete</th>
    <th>Edit</th>
    </thead>
    <c:forEach items="${productList}" var="p">
        <tr>
            <td>
                <c:out value="${p.id}"/>
            </td>
            <td>
                <c:out value="${p.name}"/>
            </td>
            <td>
                <c:out value="${p.price}"/>
            </td>
            <td>
                <c:out value="${p.status}"/>
            </td>
            <td>
                <c:out value="${p.producer}"/>
            </td>
            <td>
                <a href="/product?action=delete&idDelete=${p.id}">Delete</a>
            </td>
            <td>
                <a href="/product?action=edit&idEdit=${p.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/product?action=add">add new product</a>
</body>
</html>
