<%-- 
    Document   : qb
    Created on : Sep 21, 2023, 12:04:20 PM
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
                        Question Bank Management
                    </h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="qb"/>
                        
                        <table class="table table-bordered" style="margin: auto; width: 60%">
                            <tr>
                                <td>
                                    Select Course
                                </td>
                                <td>
                                    <select name="coursename" class="form-control">
                                        <%
                                        DbManager dm=new DbManager();
                                        ResultSet rs=dm.select("select * from course");
                                        while(rs.next()){
                                        %>
                                        <option><%=rs.getString("coursename")%></option>  
                                        <%
                                            }
                                        %>
                                        
                                    </select>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    Enter Question
                                </td>
                                <td>
                                    <textarea name="question" class="form-control"></textarea>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Option 1:
                                </td>
                                <td>
                                    <textarea name="opt1" class="from-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Option 2:
                                </td>
                                <td>
                                    <textarea name="opt2" class="from-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Option 3:
                                </td>
                                <td>
                                    <textarea name="opt3" class="from-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Option 4:
                                </td>
                                <td>
                                    <textarea name="opt4" class="from-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Correct answer:
                                </td>
                                <td>
                                    <textarea name="correct" class="from-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="viewqb.jsp">
                                        <button type="button" class="btn btn-success">View Question</button>
                                    </a>
                                </td>
                                <td>
                                    <button type="submit" class="btn btn-success">
                                        Submit
                                    </button>
                                </td>
                            </tr>
                            
                        </table>
                        
                    </form>
                    
                    
                    
                </div>
                
            </div>
              <jsp:include page="footer.jsp"/>                          
        </div>
    </body>
</html>



<% } %>