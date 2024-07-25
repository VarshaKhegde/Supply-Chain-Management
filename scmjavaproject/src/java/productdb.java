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
public class productdb extends HttpServlet {

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
        String code=request.getParameter("icode");
        String pid=request.getParameter("pid");
        String name=request.getParameter("iname");
        String model=request.getParameter("model");
        String spec=request.getParameter("spec");
        String war=request.getParameter("war");
        String cost=request.getParameter("cost");
        String quant=request.getParameter("quant");
        
        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver");
             Connection con=new Dbcon().getConnection();
             Statement stat=con.createStatement();
             stat.executeUpdate("INSERT INTO `product`(`id`, `proid`, `itemname`, `itemcode`, `model`, `specification`, `warranty`, `cost`, `quantity`, `status`) VALUES (null,'"+name+"','"+pid+"','"+code+"','"+model+"','"+spec+"','"+war+"','"+cost+"','"+quant+"',' ')");
           out.println("<script>alert(\"Successfully\")</script>");
           out.println("<meta http-equiv = \"refresh\" content = \"0;product.jsp\" />");
           
        }
        catch(Exception e){
            out.print(e);
           // out.println("INSERT INTO `product`(`id`, `itemname`, `itemcode`, `model`, `specification`, `warranty`, `cost`) VALUES (null,'"+name+"','"+code+"','"+model+"','"+spec+"','"+war+"','"+cost+"')");
            out.println("<script>alert(\" UnSuccessfully\")</script>");
           out.println("<meta http-equiv = \"refresh\" content = \"0;product.jsp\" />");
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
