<%-- 
    Document   : exam
    Created on : Sep 24, 2023, 3:26:54 PM
    Author     : aalok
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
                    <h2 style="color: blue; text-align: center;  ">Examination Modules</h2>
                    <form class="form-group" method="post" action="studentcontroller.jsp">
                        <input type="hidden"  name="page" value="exam"/>
                    <table class="table table-borderd" style="width: 60%; margin: auto;">
                        <tr>
                            <td>Select Course</td>
                            <td>
                                <select name="coursename" class="form-control">
                                    
                               
                            <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from course");
                            while(rs.next())
                            {
                                
                            %>
                            <option><%=rs.getString("coursename")%></option>
                            <%  } %>
                             </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <ul>
                                    <li>All Question are compulsory</li>
                                    <li>Each question carry 1 marks</li>
                                    <li>No negative marking</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button type="submit" class="btn btn-outline-success">Start</button>
                                
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
<%
}
%>
