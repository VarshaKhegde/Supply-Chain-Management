<%-- 
    Document   : register
    Created on : 21 Jun, 2024, 1:43:55 PM
    Author     : HP
--%>
<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Register</h3>
                </div>
<!--                <h4>New here?</h4>-->
                <h6 class="fw-light">Signing up is easy. It only takes a few steps</h6>
                <form class="pt-3" action="dealeregdb" method="POST">
                  <div class="form-group">
                      <input type="text" name="fname" id="fname" class="form-control form-control-lg"  placeholder="FullName" required="">
                  </div>
                  <div class="form-group">
                      <input type="email" name="email" id="email" class="form-control form-control-lg"  placeholder="Email">
                  </div>
                    <div class="form-group">
                        <input type="number" name="phno" id="phno" class="form-control form-control-lg"  placeholder="Phone Number" required="">
                  </div>
                    <div class="form-group">
<!--                        <input type="text" name="street" id="street" class="form-control form-control-lg"  placeholder="Street" required="">-->
                    <textarea name="add" id="add" class="form-control form-control-lg" placeholder="Full Address" ></textarea>
                  </div>
                  <div class="form-group">
                      <input type="password" name="pass" id="pass" class="form-control form-control-lg" placeholder="Password" required="">
                  </div>
                    <div class="form-group">
                        <input type="password" name="cpass" id="cpass" class="form-control form-control-lg" placeholder="Confirm Password" required="">
                  </div>
                    <div class="form-group">
                        <input type="date" name="date" id="date" class="form-control form-control-lg" placeholder="Date" required="">
                  </div>
                  <div class="mb-4">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                          <input type="checkbox" class="form-check-input" required=""> I agree to all Terms & Conditions </label>
                    </div>
                  </div>
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="Register"/>
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