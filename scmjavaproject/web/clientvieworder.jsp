<%-- 
    Document   : vieworder
    Created on : 22 Jun, 2024, 5:51:08 PM
    Author     : HP
--%>
<%
    String sphno=null;
    HttpSession sh=request.getSession();
     sphno=sh.getAttribute("username").toString();
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="userheader.jsp"/>

        <table border="2" >
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
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            int flag=0;
            ResultSet res=stat.executeQuery("SELECT * FROM `clientorder` WHERE `pcontact`='"+sphno+"' ");
            while(res.next())
            {
//                String name=res.getString("username");
//              String add=res.getString("address");
//              String ph=res.getString("phone");
                String name=res.getString("username");
                String phno=res.getString("pcontact");
                String spec=res.getString("reqspecification");
                String model=res.getString("model");
                String quan=res.getString("quantity");
                String date=res.getString("date");
                String status=res.getString("status");
             out.println("<tr><td>"+name+"</td><td>"+phno+"</td><td>"+spec+"</td><td>"+model+"</td><td>"+quan+"</td><td>"+date+"</td><td>"+status+"</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>
        </div>

<jsp:include page="userfooter.jsp"/>
