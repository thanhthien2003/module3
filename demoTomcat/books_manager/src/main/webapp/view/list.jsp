<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2023
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- private int id;
    private String title;
    private int pageSize;
    private int authorId;
    private int cateGoryId;--%>
<html>
<head>
    <title>List Book</title>
</head>
<body>
<a href="/controller?action=add">them moi</a>
<table border="1px">
    <thead>
    <th>ID</th>
    <th>TITLE</th>
    <th>PAGE SIZE</th>
    <th>AUTHOR ID</th>
    <th>CATEGORY ID</th>
<%--     private int id;
    private String title;
    private int pageSize;
    private int authorId;
    private int cateGoryId;--%>
    </thead>
            <c:forEach items="${bookList}" var="b">
                <tr>
                    <td>
                        <c:out value="${b.id}"/>
                    </td>
                    <td>
                        <c:out value="${b.title}"/>
                    </td>
                    <td>
                        <c:out value="${b.pageSize}"/>
                    </td>
                    <td>
                        <c:out value="${b.authorId.nameAuthor}"/>
                    </td>
                    <td>
                        <c:out value="${b.cateGoryId.nameCategory}"/>
                    </td>
                    <td>
                        <button>Chinh sua</button>
                    </td>
                    <td>
                        <button>Xoa</button>
                    </td>
                </tr>
            </c:forEach>
</table>
</body>
</html>
