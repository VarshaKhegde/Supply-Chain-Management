<%-- 
    Document   : userheader
    Created on : 22 Jun, 2024, 4:55:23 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--session check-->
<%
String sphno=null;
String spass=null;

try{
    
        HttpSession sh=request.getSession();
    sphno=sh.getAttribute("username").toString();
    spass=sh.getAttribute("password").toString();
    
    if(sphno.equals("")||spass.equals("")||sphno.equals(null)||spass.equals(null))
    {
        response.sendRedirect("index.html");
    }
    
}
catch(Exception e)
{
 response.sendRedirect("index.html");
}
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SCM </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/feather/feather.css">
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="assets/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="assets/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body class="with-welcome-text">
    <div class="container-scroller">
      
      <!-- navbar.html -->
      <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
          <div class="me-3">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
              <span class="icon-menu"></span>
            </button>
          </div>
          <div>
            <a class="navbar-brand brand-logo" href="index.html">
<!--              <img src="assets/images/logo.svg" alt="logo" />-->
<p><b>SCM</b></p>
            </a>
            <a class="navbar-brand brand-logo-mini" href="index.html">
              <img src="assets/images/logo-mini.svg" alt="logo" />
            </a>
          </div>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-top">
          <ul class="navbar-nav">
            <li class="nav-item fw-semibold d-none d-lg-block ms-0">
              <h1 class="welcome-text"> <span class="text-black fw-bold">Supply Chain Management</span></h1>
              <h3 class="welcome-sub-text"></h3>
            </li>
          </ul>
          <ul class="navbar-nav ms-auto">
            <li class="nav-item d-none d-lg-block">
              <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
                <span class="input-group-addon input-group-prepend border-right">
                  <span class="icon-calendar input-group-text calendar-icon"></span>
                </span>
                <input type="text" class="form-control">
              </div>
            </li>

          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item">
              <a class="nav-link" href="clientorder.jsp">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Place Order</span>
              </a>
            </li>
<li class="nav-item">
              <a class="nav-link" href="clientvieworder.jsp">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">View Order</span>
              </a>
            </li>
<!--            <li class="nav-item">
              <a class="nav-link" href="##.jsp">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Status</span>
              </a>
            </li>-->
            <li class="nav-item">
              <a class="nav-link" href="logout">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Logout</span>
              </a>
            </li>
         
          </ul>
        </nav>
        <!-- main -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-sm-12">
                <div class="home-tab">
                  <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                  </div>
                  <div class="tab-content tab-content-basic">
                    <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="statistics-details d-flex align-items-center justify-content-between">

                          </div>
                        </div>
                      </div>
                    