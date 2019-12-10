<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css" href="css/style.css"/>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Wyszukani pracownicy</title>

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

<table>
    <c:forEach items="${employees}" var="employee">
        <form:form method="POST" action="/generate-vcard" modelAttribute="employee" acceptCharset="ISO 8859-16 UTF-8">
            <tr>
                <td>Imie:</td>
                <td>${employee.getName()}</td>
                <td><form:input type="hidden" path="name" value="${employee.getName()}"/></td>
            </tr>
            <tr>
                <td>Nazwisko:</td>
                <td>${employee.getSurname()}</td>
                <td><form:input type="hidden" path="surname" value="${employee.getSurname()}"/></td>
            </tr>
            <tr>
                <td>Tytul naukowy:</td>
                <td>${employee.getTitle()}</td>
                <td><form:input type="hidden" path="title" value="${employee.getTitle()}"/></td>
            </tr>
            <tr>
                <td>Miejsce:</td>
                <td>${employee.getPlace()}</td>
                <td><form:input type="hidden" path="place" value="${employee.getPlace()}"/></td>
            </tr>
            <tr>
                <td>
                    <button type="submit">Generuj vCard</button>
                </td>
            </tr>
        </form:form>

    </c:forEach>
</table>

</body>
</html>
