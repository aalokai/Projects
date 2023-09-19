<%-- 
    Document   : delenq
    Created on : Sep 19, 2023, 2:29:21?PM
    Author     : aalok
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="delete from enquiry where id='"+id+"'";
if(dm.insertUpdateDelete(query)==true){
    out.print("<script>alert('Enquiry is deleted');window.location.href='enquiry.jsp';</script>");

    }
    else{
        out.print("<script>alert('Enquiry is not deleted');window.location.href='enquiry.jsp';</script>");
    
    }

%>
