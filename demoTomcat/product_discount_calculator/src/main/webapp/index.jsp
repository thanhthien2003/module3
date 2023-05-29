<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1> Product Discount Calculator </h1>
<form method="post" action="/display-discount">
    <label for="description">
        Product Description :
    </label>
    <input id="description" name="description" placeholder="Mô tả của sản phẩm">
    <label for="listPrice">
        List Price :
    </label>
    <input id="listPrice" name="listPrice" placeholder="Giá niêm yết của sản phẩm">
    <label for="discountPercent">
        Discount Percent :
    </label>
    <input id="discountPercent" name="discountPercent" placeholder="Tỷ lệ chiết khấu (phần trăm)">
    <br>
    <button type="submit">Calculate Discount</button>
    <br>
    <h2>Discount Amount: ${result}</h2>
    <h2>Discount Price: ${discountPrice}</h2>
</form>
</body>
</html>