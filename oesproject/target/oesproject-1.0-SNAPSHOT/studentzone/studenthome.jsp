<%-- 
    Document   : studenthome
    Created on : Sep 21, 2023, 5:34:09 PM
    Author     : aalok
--%>

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
        
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />  
  
    </head>
    <body>
        <div class="container ">
            <jsp:include page="header.jsp"/>
            <div class="row" style="min-height: 600px;background-color: aliceblue;">
                
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
        
    </body>
</html>
<%
}
%>
