<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login page</title>
</head>
<body>
<%
    String email = request.getParameter("email").trim().toLowerCase();
    String password = request.getParameter("password");

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbjavaee?user=root&password=123456");
    String sql = "SELECT * FROM dbjavaee.users WHERE email = ? AND password = ?";
    PreparedStatement preparedStatement = connection.prepareStatement(sql);

%>
</body>
</html>
