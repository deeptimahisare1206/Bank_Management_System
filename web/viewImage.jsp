<%-- 
    Document   : viewImage
    Created on : Sep 26, 2024, 11:15:24 AM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
<%@page import="universal_connect.DatabaseConnect"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Image</title>
    </head>
    <form action="">
    <input type="number" name="num">
    <input type="submit" name="name">
    <br><br>
    <%@include file="Display.jsp" %>
    </form>
       

