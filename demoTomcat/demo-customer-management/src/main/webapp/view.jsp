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
    <title>Customer Manager</title>
</head>
<body>
    <h1>Customer Manager List</h1>
    <table border="1px">
        <thead>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>address</th>
        <th>Edit</th>
        <th>Delete</th>
        </thead>
        <c:forEach items="${customerList}" var="c">
        <tr>
            <td>
                <c:out value="${c.id}"/>
            </td>
            <td>
                <c:out value="${c.name}"/>
            </td>
            <td>
                <c:out value="${c.email}"/>
            </td>
            <td>
                <c:out value="${c.address}"/>
            </td>
            <td>
                <a href="/ControlerCustomerServlet?action=edit&id=${c.id}">edit</a>
            </td>
            <td>
                <a href="/ControlerCustomerServlet?action=delete&id=${c.id}">delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
<a href="/ControlerCustomerServlet?action=add">Add New Customer</a>
</body>
</html>
