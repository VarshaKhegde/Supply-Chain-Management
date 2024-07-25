/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.Dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class updatedb1 extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String id=request.getParameter("id");
        String icode=request.getParameter("icode");
        String iname=request.getParameter("iname");
        String model=request.getParameter("model");
        String spec=request.getParameter("spec");
        String war=request.getParameter("war");
        String cost=request.getParameter("cost");
        try {
            /* TODO output your page here. You may use following sample code. */
         Connection con=new Dbcon().getConnection();
             Statement stat=con.createStatement();
             stat.executeUpdate("UPDATE `product` SET `itemname`='"+iname+"',`itemcode`='"+icode+"',`model`='"+model+"',`specification`='"+spec+"',`warranty`='"+war+"',`cost`='"+cost+"' WHERE `id`='"+id+"'");
             //out.print("UPDATE `product` SET `itemname`='"+iname+"',`itemcode`='"+id+"',`model`='"+model+"',`specification`='"+spec+"',`warranty`='"+war+"',`cost`='"+cost+"' WHERE `itemcode`='"+id+"'");
           out.println("<script>alert(\"Updated Successfully \")</script>");
           out.println("<meta http-equiv = \"refresh\" content = \"0;viewproduct.jsp\" />");
         
        }
        catch(Exception e){
            out.println("<script>alert(\"Updated UnSuccessfully \")</script>");
           out.println("<meta http-equiv = \"refresh\" content = \"0;viewproduct.jsp\" />");
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
        processRequest(request, response);
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
