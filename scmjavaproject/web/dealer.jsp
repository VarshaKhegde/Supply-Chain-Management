<%-- 
    Document   : dealer
    Created on : 22 Jun, 2024, 10:38:03 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
                    <h4 align="center"><b>Dealer Info</b></h4>
<!--                  <img src="../../assets/images/logo.svg" alt="logo">-->
                </div>
                  <form class="pt-3" action="dealerdb" method="POST">
                  <div class="form-group">
                      <input type="text" name="dname" id="dname" class="form-control form-control-lg" placeholder="Name">
                  </div>
                      <div class="form-group">
                      <input type="text" name="item" id="item" class="form-control form-control-lg" placeholder="Product Name">
                  </div>
                      <!--Select option -->
<!--                       <div class="form-group">
                      <select class="form-select form-select-lg" name="item" id="item" required=""> 
                          <option>Select Product</option>
                         <% 
//                 Class.forName("com.mysql.jdbc.Driver");
//            Connection con=new Dbcon().getConnection();
//            Statement stat=con.createStatement();
//            int flag=0;
//           ResultSet res=stat.executeQuery("SELECT * FROM `category`");
//            while(res.next())
//            {          
//                String id=res.getString("id");
//              String name=res.getString("name");
//              out.println(" <option value="+name+">"+name+"</option>");
//              
//            }
                      %>
                        
                    </select>
                  </div>-->
                      
                  <div class="form-group">
                      <input type="number" name="contact" id="contact" class="form-control form-control-lg" placeholder="Contact Number">
                  </div>
<textarea name="add" id="add" class="form-control form-control-lg" placeholder="Address"></textarea>
                  <div class="mt-3 d-grid gap-2">
                    <button class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" >SUBMIT</button>
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
    
    <jsp:include page="userfooter.jsp"/>