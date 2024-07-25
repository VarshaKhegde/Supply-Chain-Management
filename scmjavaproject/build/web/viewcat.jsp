<%-- 
    Document   : viewcat
    Created on : 24 Jun, 2024, 1:57:45 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp"/>
<div align="center">
 <table id="customers" >
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
               
            </tr>
            <%
                  
               
                 Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            int flag=0;
            ResultSet res=stat.executeQuery("SELECT * FROM `category`");
            while(res.next())
            {
                String name=res.getString("name");
                String id=res.getString("id");
             out.println("<tr><td>"+id+"</td><td>"+name+"</td><td><a href='catdelete?id="+id+"'</a>DELETE || <a href='catupdate.jsp?id="+id+"'</a>EDIT</td></tr>");
             //<a href='delete?id="+ph+"'</a>DELETE | <a href='update.jsp?id="+ph+"'</a>UPADATE</td>
            }
            %>
        </table>
</div>

<jsp:include page="userfooter.jsp"/>