<%@ page import="com.sun.org.apache.bcel.internal.generic.IfInstruction" %>
<!doctype html>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" %>

<%--问题1：这是什么..指示元素？ --%>
<%!
    String getDate(){
        return new java.util.Date().toString();
    }
            int count = 10;
            %>
<%--问题2：getDate是一个类？方法？函数？--%>

<html>
    <head><title>typcial JSP</title></head>
    <body>
    <jsp:include page = "header.jsp"/>
    <div style="text-align:center">
        <tr style="background: #777;">
            <th>....</th>
        </tr>
        <%
            String c1 = "#9cf" ,c2 = "#8c3";
            for (int i = 0; i < count ; i++) {
                String color;
            }
        %>
    </div>
    </body>
</html>