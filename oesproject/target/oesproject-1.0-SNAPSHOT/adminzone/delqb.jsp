<%-- 
    Document   : delqb
    Created on : Sep 21, 2023, 5:16:54?PM
    Author     : aalok
--%>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
String qid=request.getParameter("qid");
DbManager dm=new DbManager();
String query="delete from qb where qid='"+qid+"'";
if(dm.insertUpdateDelete(query)){
out.print("<script>alert('Question is deleted');window.location.href='viewqb.jsp';</script>");
    }
    else{
    out.print("<script>alert('Question is not deleted');window.location.href='viewqb.jsp';</script>");

    
    }
%>
