<%-- 
    Document   : start
    Created on : Sep 24, 2023, 3:30:52 PM
    Author     : aalok
--%>

<%@page import="dbpack.Exam"%>
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
            <div class="row">
                <div class="col-sm-12 bg-info" style="min-height: 600px;">
                     <h2 style="color: blue; text-align: center;  box-shadow: 10px 10px 1px darkred;">Attempt <span style="color:orange">Examination</span></h2>
                     <form class="form-group" method="post" action="calc.jsp">
                         <table class="table table-borderd" style="width: 70%; margin: auto;">
                             <%
                             DbManager dm=new DbManager();
                             ResultSet rs=dm.select("select count(*) as tcount from qb");
                             rs.next();
                             Exam.totalques=rs.getInt("tcount");
                             String query="select * from qb where qid='"+Exam.count+"'";
                             rs=dm.select(query);
                             if(rs.next())
                             {
                             %>
                             <tr>
                                 <td><%=rs.getInt("qid")%></td>
                                 <td><%=rs.getString("question")%></td>
                             </tr>
                             <tr>
                                 <td>
                                     <input type="radio" name="option" value="<%=rs.getString("opt1")%>" required/>
                                 </td>
                                 <td><%=rs.getString("opt1")%></td>
                             </tr>
                             <tr>
                                 <td>
                                     <input type="radio" name="option" required value="<%=rs.getString("opt2")%>"/>
                                 </td>
                                 <td><%=rs.getString("opt2")%></td>
                             </tr>
                             <tr>
                                 <td>
                                     <input type="radio" name="option" required value="<%=rs.getString("opt3")%>"/>
                                 </td>
                                 <td><%=rs.getString("opt3")%></td>
                             </tr>
                             <tr>
                                 <td>
                                     <input type="radio" name="option" required value="<%=rs.getString("opt4")%>"/>
                                 </td>
                                 <td><%=rs.getString("opt4")%></td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     <button type="submit" class="btn btn-outline-success">submit</button>
                                 </td>
                             </tr>
                              <% } %>   
                             
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
