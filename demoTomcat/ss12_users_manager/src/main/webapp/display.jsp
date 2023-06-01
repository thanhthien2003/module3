<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2023
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List student</title>
</head>
<body>
<table id="tableStudent" class="table table-striped">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Giới tính</th>
        <th>Điểm</th>
        <th>Mã lớp</th>
        <th>Sua</th>
        <th>Xoa</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${studentList}" var="s" varStatus="loop">
    <tr>
        <td>
            <c:out value="${loop.count}"/>
        </td>
        <td>
            <c:out value="${s.name}"/>
        </td>
        <td>
            <c:if test="${s.gender == true}">
                Nam
            </c:if>
            <c:if test="${s.gender == false}">
                Nu
            </c:if>
        </td>
        <td>
            <c:choose>
                <c:when test="${s.point > 8}">Gioi</c:when>
                <c:when test="${s.point > 6.5}">Kha</c:when>
                <c:otherwise>Trung Binh</c:otherwise>
            </c:choose>
        </td>
        <td>
            <c:out value="${s.classId}"/>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
