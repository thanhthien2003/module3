<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/12/2023
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
    <style>
        form{
            background-color: #b6c2ec;
        }
    </style>
</head>
<body>
<form action="/chiTieu?action=create" method="post">
    Nhập tên chi tiêu: <input name="tenChiTieu" required>
    <br>
    Nhập ngày chi: <input name="ngayChi" required>
    <br>
    Nhập số tiền chi: <input name="soTienChi" required>
    <br>
    Chọn loại chi tiêu:
    <select name="idLoaiChiTieu" required>
        <option value="">---</option>
        <c:forEach items="${loaiChiTieuList}" var="loaiChiTieu">
                <option value="${loaiChiTieu.idLoaiChiTieu}"> ${loaiChiTieu.tenLoaiChiTieu}</option>
        </c:forEach>
    </select>
    <br>
    Nhập mô tả thêm: <input name="moTaThem" required>
    <br>
<button type="submit">Thêm mới</button>
</form>
</body>
</html>
