<%-- 
    Document   : userHome
    Created on : Feb 8, 2025, 12:03:23 AM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
<%@page import="universal_connect.DatabaseConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user home</title>
         <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <%@include file="navbar.jsp" %>
    </head>
   <body class="text-teal-900 h-screen box-border bg-cover bg-sky-200 grid place-items-center">
        <div class="bg-slate-100 rounded-lg text-center shadow-lg shadow-slate-500 p-6  grid place-items-center mt-10">
           
        <%
            String user = (String) session.getAttribute("user");
//                out.print(user);
            String msg = request.getParameter("msg");
            if (msg != null && msg.equals("success")) {
        %>
        <p class="text-green-800 text-4xl">Login success.</p>
        <%
            }

            try {
                String query = "select * from user where accountno=? or gmail=?";
                Connection connect = DatabaseConnect.getconnection();
                PreparedStatement pst = connect.prepareStatement(query);
                pst.setString(1, user);
                pst.setString(2, user);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    String userf = rs.getString("firstname");
                    String userl = rs.getString("lastname");
                    String image = rs.getString("image");
        %>
        <img src="img/<%=image%>" height="300" width="300" alt="alt" class="rounded-3xl"/>
        <p class="text-pink-900 text-6xl">Welcome <%=userf%>  <%=userl%> ji....😊</p>
        <%
                }

            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        %>
        </div>
    </body>
</html>
