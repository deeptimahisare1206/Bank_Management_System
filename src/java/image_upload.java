/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import universal_connect.DatabaseConnect;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author deept
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/image_upload"})
public class image_upload extends HttpServlet {

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
            out.println("<title>Servlet image_upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet image_upload at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        PrintWriter pt=response.getWriter();
        
        HttpSession session = request.getSession();
        try {
            Part file = request.getPart("pic");
            String filename= file.getSubmittedFileName();
//            pt.print(filename);

            String drive_path="E:/New_Java_Projecr/WebApp/web/img/" + filename;
            String sql = " insert into img_table(image_filename) values(?)";

            FileOutputStream fos = new FileOutputStream(drive_path);
            InputStream is = file.getInputStream();
            byte[] imageData = new byte[is.available()];
            is.read(imageData);
            fos.write(imageData);
            Connection conn = DatabaseConnect.getconnection();
            PreparedStatement pst =conn.prepareStatement(sql);
            pst.setString(1, filename);
            int i= pst.executeUpdate();
            if(i==1){
                String path = getServletContext().getRealPath("")+"img";
                file.write(path + File.separator + filename);
             
               session.setAttribute("image", filename+"Uplaod Success");
               response.sendRedirect("viewImage.jsp");
            }
            else{
            pt.print("Not Inserted.");
            }
            
            
//            
//            Part file = request.getPart("pic");
//            String image_path = request.getParameter("pic");
////           String drive_path="E:\\New_Java_Projecr\\WebApp\\web\\img\\";
//            String pic_path = file+image_path;
//            String sql = " insert into image_table(image_data) values(?)";
//            
////            String folder_path="E:\\New_Java_Projecr\\WebApp\\web\\img\\";
////            String sql2 = "select image_data from image_table where image_id=(?)";
//
//           
//            FileInputStream fst = new FileInputStream(pic_path);
//            byte[] imageData = new byte[fst.available()];
//            fst.read(imageData);
//            PreparedStatement pst =conn.prepareStatement(sql);
//            pst.setBytes(1, imageData);
//            int i= pst.executeUpdate();
//            if(i >0){
//            pt.print("Insertion successfull.");
//            }
//            else{
//            pt.print("Not Inserted.");
//            }

//=======================================================
//            PreparedStatement pst1 =conn.prepareStatement(sql2);
//            pst1.setInt(1, 2);
//            ResultSet rs = pst1.executeQuery();
//            if(rs.next()){
//                byte[] imageData2 = rs.getBytes("image_data");
//                String path= folder_path + "extracted3.jpg";
//                OutputStream ost = new FileOutputStream(path);
//                ost.write(imageData2);
//            }
//            else{
//                pt.print("Image not found!");
//            }

        } catch (SQLException e) {
            pt.print(e.getMessage());
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
