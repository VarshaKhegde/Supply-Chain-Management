<%-- 
    Document   : adminlogin
    Created on : 22 Jun, 2024, 10:07:42 PM
    Author     : HP
--%>

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
                    <h4 align="center"><b>Admin LOGIN</b></h4>
<!--                  <img src="../../assets/images/logo.svg" alt="logo">-->
                </div>
                  <form class="pt-3" action="adminlogindb" method="POST">
                  <div class="form-group">
                      <input type="text" name="name" id="name" class="form-control form-control-lg" placeholder="Username">
                  </div>
                  <div class="form-group">
                      <input type="password" name="pass" id="pass" class="form-control form-control-lg" placeholder="Password">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                    <button class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" >SIGN IN</button>
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
