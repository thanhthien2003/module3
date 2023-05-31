<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculator">
    <p> Calculator</p>
    <label for="firtsNumber">First operand: </label>
    <input type="number" name="firtsNumber" id="firtsNumber">
    <label for="secondNumber">Second operand: </label>
    <input type="number" name="secondNumber" id="secondNumber">
    <label for="operator"> Operator</label>
    <br>
    <select class="form-select" aria-label="Default select example" id="operator" name="operator">
        <option value="Sum">Sum</option>
        <option value="Sub">Sub</option>
        <option value="Multi">Multi</option>
        <option value="division">division</option>
    </select>
    <br>
    <button>Calculate</button>
</form>
</body>
</html>
