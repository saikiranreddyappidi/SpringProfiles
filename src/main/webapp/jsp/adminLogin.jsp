<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 23-04-2024
  Time: 08:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="${pageContext.request.contextPath}/global.css" rel="stylesheet">

</head>
<body>
<h1>Login</h1>


<form action="authenticate" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <c:if test="${not empty error}">
        <div class="error" style="color: red">${error}</div>
    </c:if>

    <input type="submit" value="Login">
</form>
</body>
</html>
