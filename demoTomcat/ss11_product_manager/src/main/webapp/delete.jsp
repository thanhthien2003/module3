<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
</head>
<body>
<h1>Delete Product</h1>
<form method="post" action="/product?action=delete&idDelete=${productDelete.id}">
    <h3> Are you sure delete?</h3>
    <fieldset>
        <legend>
            This info product you want delete
        </legend>
        <table>
            <tr>
                <td>Id: ${productDelete.id}</td>
            </tr>
            <tr>
                <td>Name: ${productDelete.name}</td>
            </tr>
            <tr>
                <td>Price: ${productDelete.price}</td>
            </tr>
            <tr>
                <td>Status: ${productDelete.status}</td>
            </tr>
            <tr>
                <td>Producer: ${productDelete.producer}</td>
            </tr>
        </table>
        <button type="submit">Confirm</button>
        <a href="/product">Back</a>
    </fieldset>
</form>
</body>
</html>
