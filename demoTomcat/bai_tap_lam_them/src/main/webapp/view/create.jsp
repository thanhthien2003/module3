<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/12/2023
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới</title>
</head>
<body>
<%--<%--    //        String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong
//        , int trongLuongXuatChuong, String xuatXu--%>
<form action="/heo?action=create" method="post">
    ma so heo: <input type="text" name="maSoHeo">
    thoiGianNhapChuong: <input type="text" name="thoiGianNhapChuong">
    trongLuong: <input type="number" min="0" name="trongLuong">
    thoiGianXuatChuong: <input type="text" name="thoiGianXuatChuong">
    trongLuongXuatChuong: <input type="number" min="0" name="trongLuongXuatChuong">
    xuatXu:
    <select name="idXuatXu">
        <option value="0">---</option>
        <c:forEach items="${noiXuatXuList}" var="noiXuatXu">
            <option value="${noiXuatXu.idXuatXu}">${noiXuatXu.xuatXu}</option>
        </c:forEach>
    </select>
    <button type="submit">Them moi</button>
</form>
</body>
</html>
