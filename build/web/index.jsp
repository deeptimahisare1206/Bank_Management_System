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
        <div class=" mt-10 h-screen flex justify-center items-center flex-col">
            <p class="text-5xl">About us</p>
            <div class="p-6 flex text-justify">
                <p class="p-6">About Us
Welcome to [Bank Name], your trusted partner for all things banking, providing a seamless and secure online banking experience. We believe that managing your finances should be easy, convenient, and accessible anytime, anywhere. With our cutting-edge digital platform, we offer a full range of banking services designed to meet the needs of both individuals and businesses in today’s fast-paced, tech-driven world.

At [Bank Name], we’re committed to delivering a personalized banking experience that puts you in control. Whether you're checking your account balance, making payments, transferring funds, or applying for loans, our user-friendly website makes banking as simple as a few clicks. You can access your accounts on the go, manage your finances, and track your transactions securely at your convenience.

Our Services:

Account Management: Open, manage, and monitor your accounts with ease.
Transfers & Payments: Send money, pay bills, and make transfers instantly and securely.
Loans & Credit: Apply for personal loans, business loans, or credit cards, and track your approval process.
Investments: Access a range of investment opportunities to help you grow your wealth.
Customer Support: Get timely and professional assistance via chat, email, or phone, ensuring your questions are answered whenever needed. </p>
                <img src="./Tablet-Banking.png" alt="alt"/>
            </div>
             </div>
    </body>
</html>
