<%-- 
    Document   : index
    Created on : Sep 10, 2023, 1:38:05 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Examination System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js">

        </script>
    </head>
    <body>
        <script>
            function validate(){
                var userid=document.getElementById("userid");
                var password=document.getElementById("password");
                if(userid.value=="" || userid.value==null){
                    alert('Please enter userid');
                    userid.focus();
                }
                else if(password.value==null||password.value==""){
                    alert('Please enter password');
                    password.focus();
                }
                else
                    document.getElementById("frmlogin").submit();
            }
            
            
        </script>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
    
    <div class="col-sm-12 my-5 " >
        <h2 style="color:blue; text-align: center;">Login Form</h2>
        <form  id="frmlogin" class="form-group" method="post" onsubmit="event.preventDefault();validate();" action="controller.jsp">
            <input type="hidden" name="page" value="login"/>
            <table class="table table-bordered" style="margin: auto;width: 80%;" >
                <tr>
                    <td>
                        Enter User
                    </td>
                    <td>
                        <input type="text" name="userid" id="userid" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Password
                    </td>
                    <td>
                        <input type="password" name="password" id="password" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button type="submit" class="btn btn-success">Login</button>
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
