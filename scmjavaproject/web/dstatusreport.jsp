<%-- 
    Document   : dstatusreport
    Created on : 25 Jun, 2024, 11:56:42 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="dealerheader.jsp"/>

<table border="5" >
            <tr>
<!--                <th>ID</th>-->
                <th>ItemName</th>
                <th>ItemCode</th>
                <th>Model</th>
                <th>Specification</th>
                <th>Warranty</th>
                <th>Cost</th>
                <th>Status</th>
            </tr>
            <%
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            ResultSet res=stat.executeQuery("SELECT * FROM `product`");
            while(res.next())
            {
                String id=res.getString("id");
                String code=res.getString("itemcode");
                String name=res.getString("itemname");
                String war=res.getString("warranty");
                String spec=res.getString("specification");
                String model=res.getString("model");
                String cost=res.getString("cost");
                String status=res.getString("status");
               
             out.println("<tr><td>"+name+"</td><td>"+code+"</td><td>"+model+"</td><td>"+spec+"</td><td>"+war+"</td><td>"+cost+"</td><td>"+status+"</td></tr>");
             
            }
            %>
        </table>
        </div>

<jsp:include page="userfooter.jsp"/>
