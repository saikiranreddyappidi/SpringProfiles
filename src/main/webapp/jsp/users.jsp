<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 16-04-2024
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/global.css" rel="stylesheet">
    <title>Users List</title>
</head>
<body>
<div class="header">
<a href="${pageContext.request.contextPath}/admin/login">Admin</a>
<a href="/new">Add User</a>
</div>
<h2>Users List</h2>

<c:if test="${empty users}">
    <p>No users found.</p>
</c:if>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Bio</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.bio}</td>
            <td><a href="/edit/${user.id}/">Edit</a></td>
            <td><a href="/delete/${user.id}/">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<c:if test="${not empty message}">
    <div class="error" style="color: red">${message}</div>
</c:if>
<c:if test="${not empty error}">
    <div class="error" style="color: red">${error}</div>
</c:if>
</body>
</html>

