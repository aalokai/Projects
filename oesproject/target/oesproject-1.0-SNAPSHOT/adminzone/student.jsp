<%-- 
    Document   : student
    Created on : Sep 20, 2023, 4:55:48 PM
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
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue; overflow-x: scroll;"  >
                    <h2 style="text-align: center;color: blue;">
                        Student Information
                    </h2>
                    <table class="table table-bordered";>
                        <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Father Name</th>
                        <th>Mother Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Program</th>
                        <th>Branch</th>
                        <th>Year</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Reg Date</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.select("select * from studentinfo");
                        while(rs.next()){
                                                
                        %>
                        <tr>
                            <td>
                                <%=rs.getString("rollno")%>
                            </td>
                            <td>
                                <%=rs.getString("name")%>
                            </td>
                            <td>
                                <%=rs.getString("fname")%>
                            </td>
                            <td>
                                <%=rs.getString("mname")%>
                            </td>
                            <td>
                                <%=rs.getString("gender")%>
                            </td>
                            <td>
                                <%=rs.getString("address")%>
                            </td>
                            <td>
                                <%=rs.getString("program")%>
                            </td>
                            <td>
                                <%=rs.getString("branch")%>
                            </td>
                            <td>
                                <%=rs.getString("year")%>
                            </td>
                            <td>
                                <%=rs.getString("contactno")%>
                            </td>
                            <td>
                                <%=rs.getString("emailaddress")%>
                            </td>
                            <td>
                                <%=rs.getString("regdate")%>
                            </td>
                            
                            
                        </tr>
                        
                        
                        
                        
                        <%
                            }
                        %>
                        
                    </table>
                    
                    
                </div>
                
            </div>
               <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>



<% } %>
