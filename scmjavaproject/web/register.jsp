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
                <form class="pt-3" action="regdb" method="POST">
                  <div class="form-group">
                      <input type="text" name="fname" id="fname" class="form-control form-control-lg"  placeholder="FirstName" required="">
                  </div>
                    <div class="form-group">
                        <input type="text" name="mname" id="mname" class="form-control form-control-lg"  placeholder="MiddleName">
                  </div>
                    <div class="form-group">
                        <input type="text" name="lname" id="lname" class="form-control form-control-lg"  placeholder="Lastname">
                  </div>
                  <div class="form-group">
                      <input type="email" name="email" id="email" class="form-control form-control-lg"  placeholder="Email">
                  </div>
                    <div class="form-group">
                        <input type="number" name="phno" id="phno" class="form-control form-control-lg"  placeholder="Phone Number" required="">
                  </div>
                    <div class="form-group">
                        <input type="text" name="street" id="street" class="form-control form-control-lg"  placeholder="Street" required="">
                  </div>
                    <div class="form-group">
                        <input type="text" name="city" id="city" class="form-control form-control-lg" placeholder="City" required="">
                  </div>
                    <div class="form-group">
                        <input type="number" name="pin" id="pin" class="form-control form-control-lg"  placeholder="PIN Code" required="">
                  </div>
                    <div class="form-group">
                        <select name="state" id="state" class="form-select form-select-lg"  required="">
                      <option>State</option>
                      <option>Karnataka</option>
                      <option>Andra Pradesh</option>
                      <option>Goa</option>
                      <option>Karanataka</option>
                      <option>Rajasthan</option>
                    </select>
                  </div>
                  <div class="form-group">
                      <select class="form-select form-select-lg" name="country" id="country" required="">
                      <option>Country</option>
                      <option>India</option>
                      <option>United Kingdom</option>
                      <option>India</option>
                      <option>Germany</option>
                      <option>Argentina</option>
                    </select>
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
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="SIGN UP"/>
                  </div>
                  <div class="text-center mt-4 fw-light"> Already have an account? <a href="login.jsp" class="text-primary"><br>Login</a>
                  </div>
                    <br>
<!--                    <div align="center">
                        <a href="index.html">Back to Home</a>
                    </div>-->
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