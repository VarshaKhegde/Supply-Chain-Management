<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="dealerheader.jsp"/>
<div align="center">
    <h3>Product Details</h3>
    <table border="5">
        <tr>
            <th>Item Name</th>
            <th>Item Code</th>
            <th>Model</th>
            <th>Specification</th>
            <th>Warranty</th>
            <th>Cost</th>
        </tr>
        <% 
            String categoryName = request.getParameter("iname");
            if (categoryName != null) {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = new Dbcon().getConnection();
                Statement stat = con.createStatement();
                ResultSet res = stat.executeQuery("SELECT * FROM `product` WHERE `itemname`='" + categoryName + "'");
                while (res.next()) {
                    String name = res.getString("itemname");
                    String code = res.getString("itemcode");
                    String model = res.getString("model");
                    String spec = res.getString("specification");
                    String war = res.getString("warranty");
                    String cost = res.getString("cost");
                    out.println("<tr><td>" + name + "</td><td>" + code + "</td><td>" + model + "</td><td>" + spec + "</td><td>" + war + "</td><td>" + cost + "</td></tr>");
                }
                con.close();
            }
        %>
    </table>

    <h3>Category Item Count</h3>
    <table border="5">
        <tr>
            <th>Category Name</th>
            <th>Item Count</th>
        </tr>
        <% 
            if (categoryName != null) {
                Connection con = new Dbcon().getConnection();
                Statement stat = con.createStatement();
                ResultSet res = stat.executeQuery("SELECT COUNT(*) AS item_count FROM `product` WHERE `itemname`='" + categoryName + "'");
                if (res.next()) {
                    int itemCount = res.getInt("item_count");
                    out.println("<tr><td>" + categoryName + "</td><td>" + itemCount + "</td></tr>");
                }
                con.close();
            }
        %>
    </table>
</div>

<jsp:include page="userfooter.jsp"/>
