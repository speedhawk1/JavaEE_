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
    </body>
</html>