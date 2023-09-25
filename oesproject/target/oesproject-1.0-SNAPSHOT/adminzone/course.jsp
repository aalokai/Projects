<%-- 
    Document   : course
    Created on : Sep 21, 2023, 10:03:52 AM
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
                    <h2 style="color: blue; text-align: center">Course Management</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="courses"/>
                        <table class="table table-bordered" style="width: 50%;margin:auto;">
                            <tr>
                                <td>
                                    Enter Course Name
                                </td>
                                <td>
                                    <input type="text" name="coursename" class="form-control" required/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br>
                    
                    <table class="table table-bordered" style="margin: auto;width: 70%;">
                        <tr>
                            <th>Id</th>
                            <th>Course Name</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.select("select * from course");
                        while(rs.next()){
                        %>
                        <tr>
                            <td>
                                <%=rs.getString("id")%>
                            </td>
                            <td>
                                <%=rs.getString("coursename")%>
                            </td>
                            <td><a href="delcourse.jsp?id=<%=rs.getString("id")%>">
                                <button class="btn btn-danger">
                                    Delete                                    
                                </button></a>
                            </td>
                        </tr>
                        
                        
                        
                        <%
                            } %>
                        
                        
                    </table>
                    
                </div>
                            </div>
                <jsp:include page="footer.jsp"/>
            
        </div>
    </body>
</html>



<% } %>
