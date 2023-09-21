<%-- 
    Document   : delcourse
    Created on : Sep 21, 2023, 11:42:42?AM
    Author     : aalok
--%>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="delete from course where id='"+id+"'";
if(dm.insertUpdateDelete(query)){
out.print("<script>alert('Course is deleted');window.location.href='course.jsp';</script>");
    }
    else{
    out.print("<script>alert('Course is not deleted');window.location.href='course.jsp';</script>");

    }
%>