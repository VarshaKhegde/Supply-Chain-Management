<%-- 
    Document   : clientorder
    Created on : 22 Jun, 2024, 2:23:36 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--session check-->
<jsp:include page="userheader.jsp"/>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Order Product</h3>
                </div>
<!--                <h4>New here?</h4>-->
<!--                <h6 class="fw-light">Signing up is easy. It only takes a few steps</h6>-->
                <form class="pt-3" action="clientorderdb" method="POST">
                  <div class="form-group">
                      <input type="text" name="username" id="username" class="form-control form-control-lg"  placeholder="Username" required="">
                  </div>
<!--                  <div class="form-group">
                      <input type="email" name="email" id="email" class="form-control form-control-lg"  placeholder="Email">
                  </div>-->
                    <div class="form-group">
                        <input type="number" name="phno" id="phno" class="form-control form-control-lg"  placeholder="Phone Number" required="">
                  </div>

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
              out.println(" <option value="+name+">"+name+"</option>");
              
            }
                      %>
                        
                    </select>
                  </div>
                       <div class="form-group">
<!--                        <input type="text" name="street" id="street" class="form-control form-control-lg"  placeholder="Street" required="">-->
<textarea name="specification" id="specification" class="form-control form-control-lg" placeholder="Requirenment Specification" required=""></textarea>
                  </div>
                      <div class="form-group">
                        <input type="number" name="quantity" id="quantity" class="form-control form-control-lg" placeholder="Quantity" required="">
                  </div>
                    <div class="form-group">
                        <input type="date" name="date" id="date" class="form-control form-control-lg" placeholder="Date" required="">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="ORDER"/>
                  </div>
                      <br>
                   
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
                      
        <!-- content-wrapper ends -->
<jsp:include page="userfooter.jsp"/>
