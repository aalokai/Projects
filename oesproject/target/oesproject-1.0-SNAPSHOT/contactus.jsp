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
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row my-5">
                
                    
                    <div class="col-sm-12">
                        <h2 style="text-align: center;color:blue;">Enquiry</h2>
                        <form class="form-group" method="post" action="controller.jsp">
                            <input type="hidden" name="page" value="contactus"/>
                            <table class="table table-bordered" style="margin: auto;width:80%;">
                                <tr>
                                    <td>Enter Name</td>
                                    <td><input type="text" name="name" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>Select Gender</td>

                                    <td><input type="radio" name="gender" class="form-check-input" value="male">Male
                                    <input type="radio" name="gender" class="form-check-input" value="female">Female</td>
                                </tr>
                                <tr>
                                    <td>Enter Address</td>
                                    <td><textarea name="address" class="form-control"></textarea></td>
                                </tr>
                                <tr>
                                    <td>Enter Contact No</td>
                                    <td><input type="number" name="contactno" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>Email Address</td>
                                    <td><input type="text" name="emailaddress" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>Enquiry Text</td>
                                    <td><textarea name="enquirytext" class="form-control"></textarea></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><button type="submit" class="btn btn-success">Submit</button></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>

            </div>
    </body>
</html>
