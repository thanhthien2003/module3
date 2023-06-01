<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2023
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hien thi danh sach nguoi dung</title>
</head>
<body>
<a href="/users?action=add">Them moi nguoi dung</a>
<table border="1px">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Email</th>
        <th>Quoc gia</th>
    </tr>
    <c:forEach items="${userList}" var="u" varStatus="loop">
    <tr>
        <td>
            <c:out value="${u.id}"/>
        </td>
        <td>
            <c:out value="${u.name}"/>
        </td>
        <td>
            <c:out value="${u.email}"/>
        </td>
        <td>
            <c:out value="${u.country}"/>
        </td>
        <td>
            <a href="/users?action=edit&idEdit=${u.id}&name=${u.name}&email=${u.email}&country=${u.country}">Chinh sua</a>
        </td>
        <td>
            <form method="post" action="/users?action=delete&idDelete=${u.id}">
                <button>Xoa</button>
            </form>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
