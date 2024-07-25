<%-- 
    Document   : category
    Created on : 22 Jun, 2024, 3:02:03 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp"/>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Category</h3>
                </div>
<!--                <h4>New here?</h4>-->
<!--                <h6 class="fw-light">Signing up is easy. It only takes a few steps</h6>-->
                <form class="pt-3" action="catdb" method="POST">
                  <div class="form-group">
                      <input type="text" name="cat" id="cat" class="form-control form-control-lg"  placeholder="Category" required="">
                  </div>
<!--                    <div class="form-group">
                        <input type="text" name="mname" id="mname" class="form-control form-control-lg"  placeholder="MiddleName">
                  </div>-->
                    
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="ADD"/>
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