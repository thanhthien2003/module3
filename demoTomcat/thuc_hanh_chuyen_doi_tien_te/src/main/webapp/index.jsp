<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post" action="/ChuyenDoiUSDServlet">
    <label for="rate">
        Rate:
    </label>
    <input id="rate" name="rate" value="22000" placeholder="22000">
    <label for="usd">
        USD:
    </label>
    <input id="usd" name="usd" placeholder="usd">
    <button type="submit">Submit</button>
    <h1> RATE: ${rate}</h1>
    <h1> USD: ${usd}</h1>
    <h1> VND: ${vnd}</h1>
</form></body>
</html>