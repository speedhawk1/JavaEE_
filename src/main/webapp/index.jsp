<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/12
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>
    <form action="register.jsp" method="post">
        <input type="text" name="email" placeholder="EMAIL"><br>
        <input type="text" name="password" placeholder="PASSWORD"><br>
        <select name="subject" multiple="multiple">
            <option value="Psychology">Psychology</option>
            <option value="Psychairtry">Psychairtry</option>
            <option value="Philosophy">Philosophy</option>
        </select>
        <input type="submit" value="LOG IN"><br>
    </form>
  </h1>

  <%=(request.getAttribute("message") != null) ? request.getAttribute("message") : ""%>
  </body>
</html>
