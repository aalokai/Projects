<%-- 
    Document   : changepassword
    Created on : Sep 17, 2023, 2:49:33 PM
    Author     : aalok
--%>


<%
    if(session.getAttribute("rollno")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <script>
            function validate(){
                var op=document.getElementById("oldpassword");
                var np=document.getElementById("newpassword");
                var cp=document.getElementById("confirmpassword");
                if(op.value==""||op.value==null){
                    alert('Please enter old password');
                    op.focus();
                }
                else if(np.value==""||np.value==null){
                    alert('Please enter new password');
                    np.focus();
                }
                else if(cp.value==""||cp.value==null){
                    alert('Please enter confirm password');
                    cp.focus();
                }
                else if(np.value!=cp.value){
                    alert('New and Confirm password do not match');
                    cp.focus();
                }
                else{
                    document.getElementById("frmchangepassword").submit();                    
                }
            }
            
        </script>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue">
                <form class="form-group mt-2" method="post"  id="frmchangepassword" onsubmit="event.preventDefault();validate();" action="studentcontroller.jsp">
                    <input type="hidden" name="page" value="changepassword">
                    <h2 style="text-align: center; color: blue">Change Password</h2>
                    <table class="table table-bordered" style="margin: auto; width: 60%; ">
                        <tr>
                            <td>
                                Enter Old Password
                            </td>
                            <td>
                                <input type="password" name="oldpassword" id="oldpassword" class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Enter New Password
                            </td>
                            <td>
                                <input type="password" name="newpassword" id="newpassword" class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Confirm Password
                            </td>
                            <td>
                                <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Change Password</button>
                            </td>
                        </tr>
                        
                    </table>
                    
                </form>
                
            </div>
                </div>
            <jsp:include page="footer.jsp"/>
            
        </div>
        
    </body>
</html>


<% } %>