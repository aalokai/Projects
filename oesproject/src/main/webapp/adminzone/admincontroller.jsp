<%@page import="dbpack.DbManager" %>
<%
    if(request.getParameter("page").equals("changepassword")){
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String userid=session.getAttribute("adminid").toString();
    DbManager dm=new DbManager();
    String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
    if(dm.insertUpdateDelete(query)==true){
    response.sendRedirect("logout.jsp");
    }
    else{
    out.print("<script>alert('Password is not changed');window.location.href='changepassword.jsp';</script>");
    }
    }
    
    
    
%>