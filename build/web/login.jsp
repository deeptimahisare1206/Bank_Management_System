<%-- 
    Document   : login
    Created on : Feb 7, 2025, 11:50:46 AM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <%@include file="navbar.jsp" %>
    </head>
    <body class="text-teal-900 h-screen box-border bg-cover bg-sky-200 grid place-items-center">
        
         <%
                String msg = request.getParameter("msg");
                if (msg != null && msg.equals("incorrect")) {
            %>
            <p class="text-red-800">Enter Valid details.</p>
            <%
            } %>
        
        <div class="bg-white grid place-items-center px-6 py-4 gap-4">

            <h1 class="text-4xl font-bold">Login</h1>
            <form action="login" method="POST" class="flex flex-col gap-6 p-2 grid place-items-center ">
                <input type="text" name="accemail" placeholder="Account No./Email" class="text-xl h-12 w-full outline-none px-2 py-1 border-b-2 border-teal-900 ">
                <input type="password" name="password" placeholder="Password" class="text-xl h-12 w-full outline-none px-2 py-1 border-b-2 border-teal-900">
                <input type="submit" value="Log in" placeholder="Enter password" class="text-xl bg-teal-900 text-white w-fit px-2 py-1">
                <div class="flex"><p>Have no Account?</p> <a href="index.jsp" class="text-blue-700 underline">Create Account</a></div>
            </form>
        </div>

    </body>
</html>
