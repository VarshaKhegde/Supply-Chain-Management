<%-- 
    Document   : login
    Created on : 21 Jun, 2024, 1:26:39 PM
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
                    <h4 align="center"><b>LOGIN</b></h4>
<!--                  <img src="../../assets/images/logo.svg" alt="logo">-->
                </div>
               
                <h6 class="fw-light">Sign in to continue.</h6>
                <form class="pt-3" action="logindb" method="POST">
                  <div class="form-group">
                      <input type="number" name="phno" id="phno" class="form-control form-control-lg" placeholder="Username">
                  </div>
                  <div class="form-group">
                      <input type="password" name="pass" id="pass" class="form-control form-control-lg" placeholder="Password">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                    <button class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" >SIGN IN</button>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                    </div>
                    <a href="#" class="auth-link text-black">Forgot password?</a>
                  </div>
<!--                  <div class="mb-2 d-grid gap-2">
                    <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                      <i class="ti-facebook me-2"></i>Connect using facebook </button>
                  </div>-->
                  <div class="text-center mt-4 fw-light"> Don't have an account? <a href="register.jsp" class="text-primary"><br>Create</a>
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
