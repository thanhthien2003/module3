<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2023
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>them moi</title>
</head>
<body>
<form action="/controller?action=add" method="post">
<%--     private int id;
    private String title;
    private int pageSize;
    private Author authorId;
    private Category cateGoryId;--%>
    <input name="action" value="add" hidden>
    <input  name="title" placeholder="nhập title" id="title">
    <input  name="pageSize" placeholder="nhập pageSize" id="pageSize">
    <select name="authorId">
        <option value="0">Chon author</option>
        <c:forEach var="author" items="${authorList}">
            <option value="${author.idAuthor}">${author.nameAuthor}</option>
        </c:forEach>
    </select>><br>
    <select name="categoryId">
        <option value="0">Chon category</option>
        <c:forEach var="category" items="${categoryList}">
            <option value="${category.id}">${category.nameCategory}</option>
        </c:forEach>
    </select>><br>

    <button type="submit">Save</button>
</form>
</body>
</html>
