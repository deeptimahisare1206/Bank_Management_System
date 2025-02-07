/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import universal_connect.DatabaseConnect;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author deept
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/createaccount"})
public class createaccount extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet createaccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet createaccount at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html");

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String dob = request.getParameter("dob");
        String add = request.getParameter("add");
        String gmail = request.getParameter("mail");
        Long mobile = Long.valueOf(request.getParameter("mobile"));
        String password = request.getParameter("pass");
        String confirmpass = request.getParameter("confirmpass");
        String acctype = request.getParameter("acctype");
        Part file = request.getPart("profile");
        String filename = file.getSubmittedFileName();

        String query = "insert into user(firstname, lastname, birthdate, address, gmail,phoneno, password, accType,image)values(?,?,?,?,?,?,?,?,?)";

        try {
            Connection connect = DatabaseConnect.getconnection();
//            =======================Image===============================
            String drivepath = "E:/2.1Bank_Management/web/img"+filename;
            FileOutputStream fos = new FileOutputStream(drivepath);
            InputStream is = file.getInputStream();
            byte[] imageData = new byte[is.available()];
            is.read(imageData);
            fos.write(imageData);
            


//           ==============================================================

            if (!password.equals(confirmpass)) {
                response.sendRedirect("createAccount.jsp?wrongpass=wrong");
            } 
                PreparedStatement pst1 = connect.prepareStatement("select * from user where gmail=?");
            pst1.setString(1, gmail);
            ResultSet rs = pst1.executeQuery();
            if (rs.isBeforeFirst()) {
                response.sendRedirect("createAccount.jsp?wrongpass=same");
            } else {
                
                
                    PreparedStatement pst = connect.prepareStatement(query);
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, dob);
                pst.setString(4, add);
                pst.setString(5, gmail);
                pst.setLong(6, mobile);
                pst.setString(7, password);
                pst.setString(8, acctype);
                pst.setString(9, filename);
//                ResultSet rs2 = pst.executeQuery();
                int i = pst.executeUpdate();
                if (i > 0) {
                    String path = getServletContext().getRealPath("")+"img";
                file.write(path + File.separator + filename);
             
                    response.sendRedirect("createAccount.jsp?wrongpass=success");
                } else {
                    response.sendRedirect("createAccount.jsp?wrongpass=wrong");

                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
