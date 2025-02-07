<%-- 
    Document   : createAccount
    Created on : Feb 7, 2025, 12:28:58 PM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>

        <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <%@include file="navbar.jsp" %>
    </head>
    <body class="text-teal-900 h-screen box-border bg-cover bg-sky-200 grid place-items-center">
        <div class="bg-slate-100 rounded-lg text-center shadow-lg shadow-slate-500 p-6  grid place-items-center mt-10">
            <h1 class="text-4xl font-bold">Create Account</h1>
            <%
                String msg = request.getParameter("wrongpass");
                if (msg != null && msg.equals("wrong")) {
            %>
            <p class="text-red-800">Password don't matches!</p>
            <%
            } else if (msg != null && msg.equals("success")) {
            %>
            <p class="text-green-800">Registration Successful!</p><%
                }

            %>
            <form action="createaccount" method="POST" enctype="multipart/form-data" class="jutify-center  grid grid-cols-2 gap-2 p-4" >

                <!--<table>-->



                <input type="text" name="fname"   placeholder="First Name"
                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">
                <input type="text" name="lname"  placeholder="Last Name"

                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">

                <input type="date" name="dob"
                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">
                <textarea id="id" name="add" rows="2" cols="20" placeholder="Address"   class="text-2xl bg-transparent border-teal-900 border-b-2 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none"></textarea>
                <input type="email" name="mail" placeholder= "Gmail"
                       class="text-2xl bg-transparent border-b-2 p-2 border-teal-900 focus:shadow-xl focus:shadow-slate-300 outline-none">


                <input type="number" name="mobile" placeholder="Mobile No."
                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">



                <input type="password" name="pass" placeholder="Password"
                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">
                <input type="password" name="confirmpass" placeholder="Confirm Password"
                       class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none">


                <!--<input type="submit" value="Ok      "class="text-3xl bg-transparent">-->
                <!--<a href="index.html"><img src="./img/icon.png" height="40px"width="80px;" alt="alt"/></a>-->


                <select class="text-2xl bg-transparent border-b-2 border-teal-900 p-2 focus:shadow-xl focus:shadow-slate-300 outline-none" name="acctype">
                    <option value="null">Select Account type</option>
                    <option value="Checking">Checking</option>
                    <option value="Saving">Saving</option>
                </select>
                <input type="file" name="profile" class="" accept=".png,.jpg,.jpeg">
                <!--<br>-->
                <input type="submit" value="Create"  class="text-xl bg-teal-900 text-white w-fit px-2 py-1">
                <input type="reset" value="Reset"class="text-xl bg-teal-900 text-white w-fit px-2 py-1">



                <!--</table>-->

            </form>
            <div class="flex text-center gap-2"><p>Already have an Account?</p> <a href="login.jsp" class="text-blue-700 underline"> Login</a></div>
        </div>


    </body>
</html>
