<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String[] subject = request.getParameterValues("subject");
    System.out.println(Arrays.asList(subject).toString());
    new com.mysql.jdbc.Driver();
    Connection connection = null;
    try {
        connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbjavaee","root","123456");
        String sql = "INSERT INTO dbjavaee.users VALUE(NULL,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,password);
        preparedStatement.setString(3, Arrays.asList(subject).toString());

        preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    request.setAttribute("massage","sign successed");

    response.sendRedirect("index.jsp");
%>
</body>
</html>
