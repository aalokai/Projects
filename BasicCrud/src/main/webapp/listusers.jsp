<jsp:include page="header.jsp"/>
<%@ page import="java.util.List" %>
<%@ page import="CrudF.entity.User" %>
<h1>List users</h1>

<table border="1">
<thead>
<th>User Id</th>
<th>Username</th>
<th>Email</th>
<th>Operation(s)</th>
</thead>

<%
List<User> listusers=(List)request.getAttribute("listusers");

for(User _user:listusers){
	out.print("<tr>");
	out.print("<td>"+_user.getUserid()+"</td>");
	out.print("<td>"+_user.getUsername()+"</td>");
	out.print("<td>"+_user.getEmail()+"</td>");
	out.print("<td><a  href="+request.getContextPath()+"/site?page=updateuser&userid="+_user.getUserid()+
			"&username="+_user.getUsername()+"&email="+_user.getEmail()+">Update</a>");
	
	out.print(" | ");
	out.print("<a  href="+request.getContextPath()+"/site?page=deleteuser&userid="+_user.getUserid()+">Delete</a></td>");
	out.print("</tr>");
}

%>


</table>

<jsp:include page="footer.jsp"/>


   