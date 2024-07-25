<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="dealerheader.jsp"/>

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-10 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <h3 align="center">Dashboard</h3>
                        </div>
                        <div class="row">
                            <% 
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = new Dbcon().getConnection();
                                Statement stat = con.createStatement();
                                ResultSet res = stat.executeQuery("SELECT category.name, COUNT(product.id) AS item_count FROM category LEFT JOIN product ON category.name = product.itemname GROUP BY category.name");
                                while (res.next()) {
                                    String categoryName = res.getString("name");
                                    int itemCount = res.getInt("item_count");
                            %>
                            <div class="col-md-4">
                                <div class="card text-black  mb-3">
                                    <div class="card-header"><%= categoryName %></div>
                                    <div class="card-body">
                                        <h5 class="card-title">Number of Items</h5>
                                        <p class="card-text"><%= itemCount %></p>
                                    </div>
                                </div>
                            </div>
                            <% 
                                }
                                con.close();
                            %>
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
