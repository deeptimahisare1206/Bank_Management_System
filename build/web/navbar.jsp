<%-- 
    Document   : navbar
    Created on : Feb 7, 2025, 11:51:32 AM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
         <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
         <div class="flex bg-slate-100 gap-5 p-2 shadow-xl fixed w-full top-0 ">
            <div class="text-6xl flex-1 mx-10">Bank</div>
            <div class=" flex-1 mx-10 text-sm lg:text-2xl">
                <ul class="h-full flex gap-5 items-center float-right lg:gap-10">
                    <li><a href="./login.jsp">LOGIN</a></li> 
                    <li><a href="createAccount.jsp">SIGNUP</a></li>  
                    <li><a href=""> CONTACTS</a></li> 
                    <li><a href="./imageUp.html"> Image</a></li>  
                    <li><a href="viewImage.jsp"> Display Image </a></li>  

  

                </ul>
            </div>
        </div>
    </body>
</html>
