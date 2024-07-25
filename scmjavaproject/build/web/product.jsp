<%-- 
    Document   : product
    Created on : 23 Jun, 2024, 3:59:29 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="dealerheader.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Product</h3>
                </div>
                <form class="pt-3" action="productdb" method="POST">
                    
                    <div class="form-group">
                        <input type="text" name="icode" id="icode" class="form-control form-control-lg"  placeholder="Item Code">
                  </div>
                  <div class="form-group">
                      <input type="text" name="pid" id="pid" class="form-control form-control-lg"  placeholder="Product ID" required="">
                  </div>
<div class="form-group">
                      <select class="form-select form-select-lg" name="iname" id="iname" required=""> 
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
              out.println(" <option value="+name+">"+name+"</option>");
              
            }
                      %>
                        
                    </select>
                  </div>
                    <div class="form-group">
                        <input type="text" name="model" id="model" class="form-control form-control-lg"  placeholder="Model">
                  </div>
  
                  <div class="form-group">
                      <input type="text" name="spec" id="spec" class="form-control form-control-lg"  placeholder="Specification">
                  </div>
                    <div class="form-group">
                        <input type="text" name="war" id="war" class="form-control form-control-lg"  placeholder="Warranty" required="">
                  </div>
                    <div class="form-group">
                        <input type="number" name="cost" id="cost" class="form-control form-control-lg"  placeholder="Cost" required="">
                  </div>
                       <div class="form-group">
                        <input type="number" name="quant" id="quant" class="form-control form-control-lg"  placeholder="Quantity" required="">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="SUBMIT"/>
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
    <!-- container-scroller -->
    <jsp:include page="userfooter.jsp"/>