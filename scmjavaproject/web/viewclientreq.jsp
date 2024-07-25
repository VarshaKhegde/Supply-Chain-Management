<%-- 
    Document   : viewclientreq
    Created on : 24 Jun, 2024, 1:27:49 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="adminheader.jsp"/>

<h3 align="center"><b>Order List</b></h3>
<br>
        <table align="center" id="customers" >
            <tr>
                <th>UserName</th>
                <th>Contact</th>
                <th>Requirenment Specification</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Date</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            ResultSet res=stat.executeQuery("SELECT * FROM `clientorder` where `status`='ordered'");
            while(res.next())
            {
                String id=res.getString("id");
                String name=res.getString("username");
                String phno=res.getString("pcontact");
                String spec=res.getString("reqspecification");
                String model=res.getString("model");
                String quan=res.getString("quantity");
                String date=res.getString("date");
             out.println("<tr><td>"+name+"</td><td>"+phno+"</td><td>"+spec+"</td><td>"+model+"</td><td>"+quan+"</td><td>"+date+"</td><td><a href='approved?id="+id+"'</a>Approved | <a href='reject?id="+id+"'</a>Reject</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>
        <br><br>
        <h3 align="center"><b>Order Summry</b></h3>
<br>
        <table id="customers" align="center" <br>
            <tr>
                <th>UserName</th>
                <th>Contact</th>
                <th>Requirenment Specification</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1=new Dbcon().getConnection();
            Statement stat1=con.createStatement();
            ResultSet res1=stat1.executeQuery("SELECT * FROM `clientorder` ");
            while(res1.next())
            {
                String id1=res1.getString("id");
                String name1=res1.getString("username");
                String phno1=res1.getString("pcontact");
                String spec1=res1.getString("reqspecification");
                String model1=res1.getString("model");
                String quan1=res1.getString("quantity");
                String date1=res1.getString("date");
                String status=res1.getString("status");
             out.println("<tr><td>"+name1+"</td><td>"+phno1+"</td><td>"+spec1+"</td><td>"+model1+"</td><td>"+quan1+"</td><td>"+date1+"</td><td>"+status+"</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>

<jsp:include page="userfooter.jsp"/>

