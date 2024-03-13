<jsp:include page="header.jsp"/>

<form action="${pageContext.request.contextPath}/site" method="post">
Username:<input type="text" name="username" value="${param.username}" required="required"/><br/>
Email:<input type="email" name="email" value="${param.email}" required="required"/><br/>
<input type="hidden" name="form" value="updateUserOperation"/>
<input type="hidden" name="userid" value="${param.userid}"/>
<input type="submit" value="Update User"/>
</form>

<jsp:include page="footer.jsp"/>


   