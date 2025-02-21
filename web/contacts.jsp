<%-- 
    Document   : contacts
    Created on : Feb 11, 2025, 8:59:45 PM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <%@include file="navbar.jsp" %>
    </head>
    <body class="text-teal-900 h-screen box-border bg-cover bg-sky-200 grid place-items-center">
        
        <div class="bg-white grid place-items-center px-6 py-4 gap-4">
         <%
                String msg = request.getParameter("send");
                if (msg != null && msg.equals("success")) {
            %>
            <p class="text-green-800">Thank you for contacting!!</p>
            <%
            } 
else if (msg != null && msg.equals("wrong")) {
            %>
            <p class="text-red-800">Something went wrong..Try contacting later!</p>
            
            <%
            } 
            %>

            <h1 class="text-4xl font-bold">Contact</h1>
            <form action="contact" method="POST" class="flex flex-col gap-6 p-2 grid place-items-center ">
                <input type="text" name="name" placeholder="Name" class="text-xl h-12 w-full outline-none px-2 py-1 border-b-2 border-teal-900 ">
                <input type="email" name="email" placeholder="Email" class="text-xl h-12 w-full outline-none px-2 py-1 border-b-2 border-teal-900">
               <textarea id="id" name="msg" rows="2" cols="20" placeholder="Query/Feedback"   class="w-full text-xl bg-transparent border-teal-900 border-b-2 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none"></textarea>
                <input type="submit" value="Send" placeholder="Enter password" class="text-xl bg-teal-900 text-white w-fit px-2 py-1">
            </form>
        </div>

    </body>
</html>
