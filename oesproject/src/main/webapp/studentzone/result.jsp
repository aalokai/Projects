<%-- 
    Document   : result
    Created on : Sep 24, 2023, 3:30:22 PM
    Author     : aalok
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
if(session.getAttribute("rollno")==null)
{
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
        <link href="../css/style.css" rel="stylesheet"/>
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />  
  
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row" style="background-color: aliceblue;">
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 style=" text-align: center;  ">View Result</h2>
                    <table class="table table-borderd" style="width: 60%; margin: auto; box-shadow:  10px 10px 3px black">
                            <tr>
                                <th>Id</th>
                                <th>Roll No</th>
                                <th>Course Name</th>
                                <th>Total Marks</th>
                                <th>Obtained Marks</th>
                                <th>Exam Date</th>
                            </tr>
                            <%
                            String rollno=session.getAttribute("rollno").toString();
                            String query="select * from result where rollno='"+rollno+"'";
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select(query);
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("rollno")%></td>
                                <td><%=rs.getString("coursename")%></td>
                                <td><%=rs.getString("totalmark")%></td>
                                <td><%=rs.getString("getmark")%></td>
                                <td><%=rs.getString("examdate")%></td>
                                
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
<%
}
%>
