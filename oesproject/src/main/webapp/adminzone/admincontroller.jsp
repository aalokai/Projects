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
    
    else if(request.getParameter("page").equals("news")){
    String newstext=request.getParameter("newstext");
    DbManager dm=new DbManager();
    String query="insert into news(newstext,posteddate) values('"+newstext+"',curdate())";
    if(dm.insertUpdateDelete(query)==true){
    out.print("<script>alert('News is added');window.location.href='news.jsp';</script>");
    }
    else{
    out.print("<script>alert('News is not added');window.location.href='news.jsp';</script>");
    }
    
    }
    
%>