<%-- 
    Document   : viewreqprod
    Created on : 26 Jun, 2024, 11:47:22 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="dealerheader.jsp"/>
  
                      <div align="center">
                          <h3><b>Request Orders</b></h3><br><br>
 <table id="customers" >
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Date</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1=new Dbcon().getConnection();
            Statement stat1=con1.createStatement();
            ResultSet res1=stat1.executeQuery("SELECT * FROM `adminproductorderdetails`");
            while(res1.next())
            {
                String id1=res1.getString("id");
                String name1=res1.getString("productname");
                String qua=res1.getString("quantity");
                String date=res1.getString("date");
                //String status=res1.getString("status");
             //out.println("<tr><td>"+id1+"</td><td>"+name1+"</td><td>"+qua+"</td><td>"+date+"</td><td>"+status+"</td></tr>");
                Connection con2=new Dbcon().getConnection();
            Statement stat2=con2.createStatement();
            ResultSet res2=stat2.executeQuery("SELECT * FROM `category` WHERE `id`='"+name1+"'");
            while(res2.next())
            {
                String name2=res2.getString("name");
                
             out.println("<tr><td>"+name2+"</td><td>"+qua+"</td><td>"+date+"</td><td><a href='adminapprov?id="+id1+"'</a>Approved | <a href='adminreject?id="+id1+"'</a>Reject</td></tr>");
            }
           }
            %>
        </table>
                      </div>
        
        <div align="center"><br><br><br>
            <h3><b>View Details</b></h3><br>
            <table id="customers">
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
                <%
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            ResultSet res=stat.executeQuery("SELECT * FROM `adminproductorderdetails`");
            while(res.next())
            {
               String id=res.getString("id");
                String name=res.getString("productname");
                String qua=res.getString("quantity");
                String date=res.getString("date");
                String status=res.getString("status");
             out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+qua+"</td><td>"+date+"</td><td>"+status+"</td></tr>");
             
            }
            %>
            </table>
            
        </div>
        
            <jsp:include page="userfooter.jsp"/>