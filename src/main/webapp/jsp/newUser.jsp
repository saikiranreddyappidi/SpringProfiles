<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 16-04-2024
  Time: 08:58
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
<h4>STUDENT INFORMATION SYSTEM</h4>
<form action="/users/add" method="post">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>Bio</td>
            <td><input type="text" name="bio"></td>
        </tr>
            <td></td>
            <td><input type="submit" value="Add Student"></td>
        </tr>
    </table>
</form>
</body>
</html>
