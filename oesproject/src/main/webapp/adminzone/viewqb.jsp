<%-- 
    Document   : viewqb
    Created on : Sep 21, 2023, 3:44:48 PM
    Author     : aalok
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
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
                    <h2 style="text-align: center; color:blue;">
                        View Questions
                    </h2>
                    <table class="table table-bordered">
                        <tr>
                            <th>Id</th>
                            <th>Course Name</th>
                            <th>Question</th>
                            <th>Option 1</th>
                            <th>Option 2</th>
                            <th>Option 3</th>
                            <th>Option 4</th>
                            <th>Correct Answer</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from qb");
                            while(rs.next()){
                            %>
                        <tr>
                            <td>
                                <%=rs.getString("qid")%>
                            </td>
                            <td>
                                <%=rs.getString("coursename")%>
                            </td>
                            <td>
                                <%=rs.getString("question")%>
                            </td>
                            <td>
                                <%=rs.getString("opt1")%>
                            </td>
                            <td>
                                <%=rs.getString("opt2")%>
                            </td>
                            <td>
                                <%=rs.getString("opt3")%>
                            </td>
                            <td>
                                <%=rs.getString("opt4")%>
                            </td>
                            <td>
                                <%=rs.getString("correct")%>
                            </td>
                            <td>
                                <a href="delqb.jsp?qid=<%=rs.getString("qid")%>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                            
                            
                            
                            <%
                                }

                            %>
                            
                            
                        </tr>
                        
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



