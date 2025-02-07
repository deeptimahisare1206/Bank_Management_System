<%-- 
    Document   : index.jsp
    Created on : Feb 7, 2025, 11:55:04 AM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banking</title>
        <link rel="stylesheet" href="./output.css" type="text/css"/>
<script src="https://cdn.tailwindcss.com"></script>
      
    </head>
    <%@include file="navbar.jsp" %>
    <body class="text-teal-900 h-full box-border bg-cover bg-sky-200">
       
        <div class="grid mt-32 place-items-center sm:grid-cols-2 gap-5">
            <div class=" lg:space-y-12 font-semibold text-4xl lg:text-5xl tracking-wider" >
                <p class="font-serif">Your <span class="underline italic">money</span> is,</p>
            <p class="font-mono ">Where you are..</p>
        </div>
            <div class="">
            <img src="./Tablet-Banking.png" alt="alt" class=""/>
        </div>
        </div>
        <div class=" mt-10 h-screen flex justify-center">
            <p class="text-5xl">About us</p>
        </div>
    </body>
</html>
