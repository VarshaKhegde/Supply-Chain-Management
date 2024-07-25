<%-- 
    Document   : vieworder
    Created on : 22 Jun, 2024, 5:51:08 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="dealerheader.jsp"/>

<table id="customers">
            <tr>
<!--                <th>ID</th>-->
                <th>ItemName</th>
                <th>ItemCode</th>
                <th>Model</th>
                <th>Specification</th>
                <th>Warranty</th>
                <th>Cost</th>
<!--                <th>Date</th>-->
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
             out.println("<tr><td>"+name+"</td><td>"+code+"</td><td>"+model+"</td><td>"+spec+"</td><td>"+war+"</td><td>"+cost+"</td><td><a href='delete?id='"+code+"'</a>DELETE | <a href='updateproduct.jsp?id="+id+"'</a>UPADATE</td></tr>");
             
            }
            %>
        </table>

<jsp:include page="userfooter.jsp"/>
