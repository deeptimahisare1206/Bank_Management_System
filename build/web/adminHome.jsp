<%-- 
    Document   : adminHome
    Created on : Feb 20, 2025, 10:10:25 PM
    Author     : deept
--%>

<%@page import="universal_connect.DatabaseConnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <link rel="stylesheet" href="./output.css" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="text-teal-900 h-screen box-border bg-cover bg-sky-200 flex ">

        <%
            String admin = (String) session.getAttribute("admin");
//                out.print(user);
            String msg = request.getParameter("send");
        %>
        <div class="bg-slate-100 rounded-lg text-center shadow-lg shadow-slate-500 p-6 flex-initial">
            <%@include file="adminsidebar.jsp" %>

        </div>
        <div class=" flex-auto">
            <%            if (msg != null && msg.equals("success")) {
            %>
            <p class="text-green-800 text-xl">Login success.</p>
            <%
                }

                if (admin != null) {

                    try {
                        String query = "select * from admin where Email=?";
                        Connection connect = DatabaseConnect.getconnection();
                        PreparedStatement pst = connect.prepareStatement(query);
                        pst.setString(1, admin);
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()) {
                            String adminf = rs.getString("Name");
                            String adminm = rs.getString("Email");
            %>
            <p class="text-pink-900 text-6xl">Welcome <%=adminf%>  <%=adminm%></p>
            <%

                        }

                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                } else {

                    response.sendRedirect("adminLogin.jsp");

                }
            %>
        </div>
    </body>
</html>
