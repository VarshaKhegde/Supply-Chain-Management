<%-- 
    Document   : viewdealereg
    Created on : 26 Jun, 2024, 10:17:04 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp"/>
<h3 align="center">View Dealer Registration</h3>
<br>
        <table align="center" id="customers" >
            <tr>
                <th>ID</th>
                <th>UserName</th>
                <th>Address</th>
                <th>Mail</th>
                <th>Contact</th>
                <th>Date</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            ResultSet res=stat.executeQuery("SELECT * FROM `dealeregister` WHERE `status`='requested' ");
            while(res.next())
            {
                String id=res.getString("id");
                String name=res.getString("fname");
                String phno=res.getString("phone");
                String add=res.getString("address");
                String mail=res.getString("mail");
                String date=res.getString("date");
             out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+add+"</td><td>"+mail+"</td><td>"+phno+"</td><td>"+date+"</td><td><a href='accept?id="+id+"'</a>Approved | <a href='dealereject?id="+id+"'</a>Reject</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>
        <br><br>
        <h3 align="center"> Registration Summry</h3>
<br>
        <table align="center" id="customers" >
            <tr>
                <th>ID</th>
                <th>UserName</th>
                <th>Address</th>
                <th>Mail</th>
                <th>Contact</th>
                <th>Date</th>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1=new Dbcon().getConnection();
            Statement stat1=con.createStatement();
            ResultSet res1=stat1.executeQuery("SELECT * FROM `dealeregister` WHERE `status`='Approved' OR `status`='Rejected'");
            while(res1.next())
            {
                String id1=res1.getString("id");
                String name1=res1.getString("fname");
                String phno1=res1.getString("phone");
                String add1=res1.getString("address");
                String mail1=res1.getString("mail");
                String date1=res1.getString("date");
                String status=res1.getString("status");
             out.println("<tr><td>"+id1+"</td><td>"+name1+"</td><td>"+add1+"</td><td>"+mail1+"</td><td>"+phno1+"</td><td>"+date1+"</td><td>"+status+"</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>
        </div>

<jsp:include page="userfooter.jsp"/>

