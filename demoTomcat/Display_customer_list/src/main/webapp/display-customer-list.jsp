<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2023
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
</head>
<body>
<h1 style="text-align: center">List customer</h1>
<table border="1px" style="margin-left: 500px">
    <thead>
    <th>Name</th>
    <th>Date</th>
    <th>Address</th>
    <th>Picture</th>
    </thead>
    <c:forEach items="${customerList}" var="s" varStatus="loop">
        <tr>
            <td>
                <c:out value="${loop.count}"/>
            </td>
            <td>
                <c:out value="${s.name}"/>
            </td>
            <td>
                <c:out value="${s.birthday}"/>
            </td>
            <td>
                <c:out value="${s.address}"/>
            </td>
            <td>
                <img src="<c:out value="${s.picture}"/>" width="100px" height="100px">
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
