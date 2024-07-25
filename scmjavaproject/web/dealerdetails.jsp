<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="database.Dbcon" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="adminheader.jsp"/>

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-10 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <h3 align="center">View Dealer Information by Category</h3>
                        </div>
                        <form class="pt-3" method="POST">
                            <div class="form-group">
                                <select class="form-select form-select-lg" name="category_id" id="iname" required="">
                                    <option>Select Category</option>
                                    <% 
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = new Dbcon().getConnection();
                                        Statement stat = con.createStatement();
                                        ResultSet res = stat.executeQuery("SELECT * FROM `category`");
                                        while (res.next()) {
                                            String categoryId = res.getString("id");
                                            String categoryName = res.getString("name");
                                            out.println("<option value='" + categoryId + "'>" + categoryName + "</option>");
                                        }
                                        con.close();
                                    %>
                                </select>
                            </div>
                            <div class="mt-3 d-grid gap-2">
                                <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="View"/>
                            </div>
                        </form>
                        <div align="center" class="mt-5">
                            <h3>Dealer Information</h3>
                            <table id="customers">
                                <tr>
                                    <th>Dealer Name</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Product Name</th>
                                    <th>Category</th>
                                    <th>Quantity</th>
                                    <th>Action</th>
                                </tr>
                                <%
                                    if (request.getParameter("category_id") != null) {
                                        String categoryId = request.getParameter("category_id");
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");

                                            Connection con1 = new Dbcon().getConnection();
                                            Statement stat1 = con1.createStatement();
                                            ResultSet res1 = stat1.executeQuery("SELECT * FROM category WHERE id = " + categoryId);
                                            String categoryName = "";
                                            if (res1.next()) {
                                                categoryName = res1.getString("name");
                                            }
                                            
                                            Connection con2 = new Dbcon().getConnection();
                                            Statement stat2 = con2.createStatement();
                                            ResultSet res2 = stat2.executeQuery("SELECT * FROM product WHERE id = " + categoryId);
                                            while (res2.next()) {
                                                String productId = res2.getString("id");
                                                String productName = res2.getString("itemname");
                                                String quantity = res2.getString("quantity");

                                                Connection con3 = new Dbcon().getConnection();
                                                Statement stat3 = con3.createStatement();
                                                ResultSet res3 = stat3.executeQuery("SELECT * FROM dealeregister WHERE id = " + res2.getString("id"));
                                                if (res3.next()) {
                                                    String dealerName = res3.getString("fname");
                                                    String phoneNumber = res3.getString("phone");
                                                    String email = res3.getString("mail");

                                                    out.println("<tr><td>" + dealerName + "</td><td>" + phoneNumber + "</td><td>" + email + "</td><td>" + productName + "</td><td>" + categoryName + "</td><td>" + quantity + "</td><td><a href='proced.jsp?product_id=" + productId + "&product_name=" + productName + "'>Order</a></td></tr>");
                                                }
                                                con3.close();
                                            }
                                            con2.close();
                                            con1.close();
                                        } catch (Exception e) {
                                            out.println("Exception: " + e.getMessage());
                                        }
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>

<jsp:include page="userfooter.jsp"/>
