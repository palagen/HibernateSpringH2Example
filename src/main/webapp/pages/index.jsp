<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">
<head>

<link href="<c:url value="/pages/css/test.css" />" rel="stylesheet">
<link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/pages/css/main.css" />" rel="stylesheet">

</head>

<body>

<div class="navbar">
    <sec:authorize access="!isAuthenticated()">
        <a class="btn btn-primary regis" href="<c:url value="/register" />" role="button">Регистрация</a>
        <a class="btn btn-success" href="<c:url value="/login" />" role="button">Войти</a>
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
        <div>
            <span class="userName">Ваш логин: <span class="boldText"><sec:authentication property="principal.username" /> </span></span>
            <a class="btn btn-danger pull-right" href="<c:url value="/logout" />" role="button">Выйти</a>
        </div>

        <h3>Все напоминания:</h3>(<a href="add">добавить</a>)

        <h1>Tdfdfdfdfdf : ${rem}</h1>

        <ol>
            <c:forEach items="${reminders}" var="reminder">
                <li>
                    ${reminder.theme} ${reminder.theme} - ${reminder.theme}
                </li>
            </c:forEach>
        </ol>

    </sec:authorize>
</div>

<sec:authorize access="!isAuthenticated()">
<div class="container">
    <div class="jumbotron" style="margin-top: 20px;">
        <h2>Система управления напоминаниями</h2>
        <h1>Wallins</h1> <br>
        <p class="lead">
            Wallins – лучше 1 раз записать, чем 7 раз забыть.
        </p>
    </div>
</div>
</sec:authorize>

<footer>
  <p>© Padalka Pavel 2016</p>
</footer>
</body>
</html>