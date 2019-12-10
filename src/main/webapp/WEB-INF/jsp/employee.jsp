<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css" href="css/style.css"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>vCard</title>

    <style type="text/css">
        body{
            font-family: "Arial", Helvetica, sans-serif;
        }
        input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        button{
            background-color: crimson;
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<h2>Podaj imię i/lub nazwisko pracownika</h2>

<form:form method="POST" action="/search" modelAttribute="employee" acceptCharset="ISO 8859-16 UTF-8">
    <table>
        <tr>
            <td><form:label path="name">Imię: </form:label></td>
            <td><form:input path="name"/></td>
        </tr>

        <tr>
            <td><form:label path="surname">Nazwisko: </form:label></td>
            <td><form:input path="surname"/></td>
        </tr>

        <tr>
            <td><button type="submit">Szukaj</button></td>
        </tr>

    </table>
</form:form>
</body>
</html>
