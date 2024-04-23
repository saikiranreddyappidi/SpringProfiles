<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 23-04-2024
  Time: 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users List</title>
</head>
<body>
<h2>Users List</h2>
<a href="/new">Add User</a>
<c:if test="${empty users}">
    <p>No users found.</p>
</c:if>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Bio</th>
        <th>Update</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.bio}</td>
            <td><a href="/admin/edit/${user.id}/">Edit</a></td>
            <td><a href="/admin/delete/${user.id}">Delete</a></td>
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
