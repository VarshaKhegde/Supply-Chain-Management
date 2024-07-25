<%-- 
    Document   : proced
    Created on : 26 Jun, 2024, 11:06:27 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp"/>

<div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-8 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Product Order</h3>
                </div>
                <form class="pt-3" action="proceddb1" method="POST">
                  <div class="form-group">
                      <select class="form-select form-select-lg" name="cat" id="cat" required=""> 
                          <option>Select Product</option>
                         <% 
                 Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            int flag=0;
           ResultSet res=stat.executeQuery("SELECT * FROM `category`");
            while(res.next())
            {
//            
                String id=res.getString("id");
              String name=res.getString("name");
              out.println(" <option value="+id+">"+name+"</option>");
              
            }
                      %>
                        
                    </select>
                  </div>
                    <div class="form-group">
                        <input type="number" name="quant" id="quant" class="form-control form-control-lg"  placeholder="Quantity">
                  </div>
                    <div class="form-group">
                        <input type="date" name="date" id="date" class="form-control form-control-lg"  placeholder="Date">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="submit"/>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
                      
                      <div align="center">
 <table border="4" >
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1=new Dbcon().getConnection();
            Statement stat1=con.createStatement();
            ResultSet res1=stat1.executeQuery("SELECT * FROM `adminproductorderdetails`");
            while(res1.next())
            {
                String id1=res1.getString("id");
                String name1=res1.getString("productname");
                String qua=res1.getString("quantity");
                String date=res1.getString("date");
                String status=res1.getString("status");
             //out.println("<tr><td>"+id1+"</td><td>"+name1+"</td><td>"+qua+"</td><td>"+date+"</td><td>"+status+"</td></tr>");
                Connection con2=new Dbcon().getConnection();
            Statement stat2=con.createStatement();
            ResultSet res2=stat2.executeQuery("SELECT * FROM `category` WHERE `id`='"+name1+"'");
            while(res2.next())
            {
                String name2=res2.getString("name");
                
             out.println("<tr><td>"+id1+"</td><td>"+name2+"</td><td>"+qua+"</td><td>"+date+"</td><td>"+status+"</td></tr>");
            }
           }
            %>
        </table>
</div>

<jsp:include page="userfooter.jsp"/>