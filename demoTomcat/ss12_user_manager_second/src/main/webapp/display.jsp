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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<a href="/users">Trang chu</a>
<form method="post" action="/users?action=findCountry">
    Nhap quoc gia can tim: <input name="country" type="text">
    <button type="submit">Tim kiem</button>
</form>
<form method="post" action="/users?action=sort">
    <button type="submit">Sap xep theo ten</button>
</form>
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
                <a href="/users?action=edit&idEdit=${u.id}&name=${u.name}&email=${u.email}&country=${u.country}">Chinh
                    sua</a>
            </td>
            <td>
                <form method="post" action="/users?action=delete&idDelete=${u.id}">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            style="height:30px;width:70px;"
                            onclick="remove('${u.id}','${u.name}')">
                        Xoa
                    </button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xoa hoc vien</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>
                    Ban co chac se xoa hoc vien nay?
                    <h3 id="nameDelete"></h3>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Dong</button>
                <form method="post" action="/users?action=delete">
                    <input id="idDelete" name="idDelete" type="hidden">
                    <button type="submit" class="btn btn-primary">Xoa</button>
                </form>

            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
<script>
    function remove(id, name) {
        document.getElementById("nameDelete").innerText = name;
        document.getElementById("idDelete").value = id;
    }
</script>
</body>
</html>
