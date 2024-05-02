<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 22-04-2024
  Time: 23:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="${pageContext.request.contextPath}/global.css" rel="stylesheet">

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div class="header">
    <a href="${pageContext.request.contextPath}/admin/login">Admin</a>
    <a href="/new">Add User</a>
</div>

<h4>STUDENT INFORMATION SYSTEM</h4>
<h4>Update Student</h4>
<p style="color: red">User Information will only be updated if the existing password matches with the entered password</p>
<form action="confirm" method="post">
    <table>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        <td><input type="submit" value="Update User"></td>
        </tr>
    </table>
</form>
<c:if test="${not empty message}">
    <div class="error" style="color: red">${message}</div>
</c:if>
</body>
</html>
