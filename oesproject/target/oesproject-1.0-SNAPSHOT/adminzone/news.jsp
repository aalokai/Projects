<%-- 
    Document   : news
    Created on : Sep 19, 2023, 3:19:15 PM
    Author     : aalok
--%>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    if(session.getAttribute("adminid")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nalanda Open University</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>

        <div class="container">
            <jsp:include page="header.jsp"/>
            
            <div class="row">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue">
                    <h2 style="color: blue;text-align: center;">
                        News Management
                    </h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        <table class="table table-bordered" style="width: 70%;margin:0 auto;">
                            <tr>
                                <td>
                                    Enter News
                                </td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-primary">Add News</button>
                            </td>
                        </table>
                        
                    </form>
                    <br/>
                    
                    <table class="table table-bordered" style="width: 80%; margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.select("select * from news");
                        while(rs.next()){
                        %>
                        <tr>
                        <td>
                            <%=rs.getString("id")%>
                        </td>
                        <td>
                            <%=rs.getString("newstext")%>
                        </td>
                        <td>
                            <%=rs.getString("posteddate")%>
                        </td>
                        <td>
                            <a href="delnews.jsp?id=<%=rs.getString("id")%>">
                                <button class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                        
                        
                        </tr>
                        <%
                        }
                        
                        %>
                        
                    </table>
                    
                </div>
                <div class="col-sm-6" style="min-height: 80px;text-align: center;background-color: black;color:white;font-size: 20px;line-height: 80px;">
                    Copyright &#169; TO Nalanda Open University
                </div>
                <div class="col-sm-6" style="min-height: 80px;text-align: center;background-color: navy;color:white;font-size: 20px;line-height: 80px;">
                    Developed by: Aalok Tiwari
                </div>
            </div>
        </div>
    </body>
</html>



<% } %>
