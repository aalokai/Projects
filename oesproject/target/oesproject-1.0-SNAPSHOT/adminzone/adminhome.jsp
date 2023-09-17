<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 2:37:35 PM
    Author     : aalok
--%>
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
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue"></div>
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