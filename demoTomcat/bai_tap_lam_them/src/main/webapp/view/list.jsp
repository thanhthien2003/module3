<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/12/2023
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List heo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<form action="/heo" method="get">
    <input name="action" value="create" hidden>
    <button type="submit">Thêm mới</button>
</form>
<form method="get" action="/heo">
    <input name="action" value="searchById" hidden>
    Tim kiem: <input name="string" placeholder="tim kiem">

    <select name="xuatXu">
        <option value="">---</option>
        <c:forEach items="${noiXuatXuList}" var="noiXuatXu">
            <option value="${noiXuatXu.xuatXu}">${noiXuatXu.xuatXu}</option>
        </c:forEach>
    </select>

    <select >
        <option value="">Tinh trang heo</option>
        <option value="Da ban">Da ban</option>
        <option value="Chua ban">Chua ban</option>
    </select>
    <button type="submit">tim kiem</button>
</form>
<span>${result}</span>
<table class="table table-bordered">
<%--    //        String maSoHeo, String thoiGianNhapChuong, int trongLuong, String thoiGianXuatChuong
//        , int trongLuongXuatChuong, String xuatXu--%>
    <thead>
    <tr>
        <th>STT</th>
        <th>Mã số heo</th>
        <th> thời gian nhập chuồng</th>
        <th> trọng lượng</th>
        <th> thời gian xuất chuồng</th>
        <th> trọng lượng xuất chuồng</th>
        <th> Xuất xứ </th>
        <th> xuất chuồng</th>
        <th> Detail</th>
        <th> Delete</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${heoList}" var="heo" varStatus="loop">
            <tr>
                <td>
                    <c:out value="${loop.count}"/>
                </td>
                <td>
                    <c:out value="${heo.maSoHeo}"/>
                </td>
                <td>
                    <c:out value="${heo.thoiGianNhapChuong}"/>
                </td>
                <td>
                    <c:out value="${heo.trongLuong}"/>
                </td>
                <td>
                    <c:out value="${heo.thoiGianXuatChuong}"/>
                </td>
                <td>
                    <c:out value="${heo.trongLuongXuatChuong}"/>
                </td>
                <td>
                    <c:out value="${heo.xuatXu.xuatXu}"/>
                </td>
                <td>
                    <c:if test="${heo.tinhTrang=='false'}"><p style="color: #dee6ee">Chưa bán</p></c:if>
                    <c:if test="${heo.tinhTrang=='true'}"><p style="color: #b7f6ff">Đã bán</p></c:if>
                </td>
                <td>
                    <button>
                        detail
                    </button>
                </td>
                <td>
                    <button>
                        delete
                    </button>
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
