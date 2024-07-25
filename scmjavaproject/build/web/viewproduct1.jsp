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
                <div class="col-lg-6 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <h3 align="center">View Product</h3>
                        </div>
                        <form class="pt-3" action="viewproduct1.jsp" method="POST">
                            <div class="form-group">
                                <select class="form-select form-select-lg" name="iname" id="iname" required="">
                                    <option>Select Product</option>
                                    <% 
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = new Dbcon().getConnection();
                                        Statement stat = con.createStatement();
                                        ResultSet res = stat.executeQuery("SELECT * FROM `category`");
                                        while (res.next()) {
                                            String name = res.getString("name");
                                            out.println(" <option value='" + name + "'>" + name + "</option>");
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="mt-3 d-grid gap-2">
                                <input type="submit" name="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="View"/>
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
                                <br>
<div align="center">
    <h3>View Product</h3>
    <table id="customers">
        <tr>
            <th>ItemName</th>
            <th>ItemCode</th>
            <th>Model</th>
            <th>Specification</th>
            <th>Warranty</th>
            <th>Cost</th>
            <th>Quantity</th>
        </tr>
        <% 
            if (request.getParameter("submit") != null) {
                String categoryName = request.getParameter("iname");
                Connection con1 = new Dbcon().getConnection();
                Statement stat1 = con1.createStatement();
                ResultSet res1 = stat1.executeQuery("SELECT * FROM `product` WHERE `itemname`='" + categoryName + "'");
                while (res1.next()) {
                    String name = res1.getString("itemname");
                    String code = res1.getString("itemcode");
                    String model = res1.getString("model");
                    String spec = res1.getString("specification");
                    String war = res1.getString("warranty");
                    String cost = res1.getString("cost");
                    String quant=res1.getString("quantity");
                    out.println("<tr><td>" + name + "</td><td>" + code + "</td><td>" + model + "</td><td>" + spec + "</td><td>" + war + "</td><td>" + cost + "</td><td>"+quant+"</td></tr>");
                }
                con1.close();
            }
        %>
    </table>
</div>

<jsp:include page="userfooter.jsp"/>
