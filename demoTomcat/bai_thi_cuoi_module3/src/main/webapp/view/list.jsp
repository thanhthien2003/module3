<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/12/2023
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách chi tiêu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<span id="success"
      class="thien"
      style="float: left; background-color: #bb8496;font-size: 15px"></span>
<form action="/chiTieu">
    <input name="action" value="create" hidden>
    <button type="submit"> THÊM MỚI CHI TIÊU</button>
</form>

<table class="table table-bordered" id="tableStudent" style="width:100%;background-color: #dee6ee" >
    <thead style="background-color: #8491bb">
    <tr>
        <th>STT</th>
        <th>Tên chi tiêu</th>
        <th>Ngày chi</th>
        <th>Số tiền chi</th>
        <th>Loại chi tiêu</th>
        <th>Mô tả thêm</th>
        <th>Xóa</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${chiTieuList}" var="chiTieu" varStatus="loop">
        <tr>
            <td>
                <c:out value="${loop.count}"/>
            </td>
            <td>
                <c:out value="${chiTieu.tenChiTieu}"/>
            </td>
            <td>
                <c:out value="${chiTieu.ngayChi}"/>
            </td>
            <td>
                <c:out value="${chiTieu.soTienChi}"/>
            </td>
            <td>
                <c:out value="${chiTieu.loaiChiTieu.tenLoaiChiTieu}"/>
            </td>
            <td>
                <c:out value="${chiTieu.moTaThem}"/>
            </td>
            <td>
                <form action="/chiTieu?action=delete" method="post">
                    <input name="tenChiTieuXoa" value="${chiTieu.tenChiTieu}" hidden>
                    <button type="submit"> Xóa </button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js">
</script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>
