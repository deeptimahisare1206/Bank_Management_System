<%-- 
    Document   : Display
    Created on : Sep 26, 2024, 1:34:04 PM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
<%@page import="universal_connect.DatabaseConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% String st = (String)session.getAttribute("image");
try{
    int id= Integer.parseInt(request.getParameter("num"));
            Connection con = DatabaseConnect.getconnection();
            
            PreparedStatement pst = con.prepareStatement("select * from img_table where image_id=(?)");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                 %>
        <img src="img/<%=rs.getString("image_filename")%>" height="100px"width="100px"  alt="Not Found"/>
        <%

            }
else{
out.print("enter valid id.");
}
            }
catch(Exception ex){
            }

   
        %>
    
    </body>
</html>
