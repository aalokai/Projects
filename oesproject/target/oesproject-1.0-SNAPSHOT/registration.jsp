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
            <div class="row mt-2">
    <div class="col-sm-4" style="min-height: 600px;background-color: aqua"></div>
    <div class="col-sm-8" style="min-height: 600px;background-color: aliceblue">
        <h2 style="text-align: center;color: blue">
            Student Registration Form
        </h2>
        <form class="form-group" method="post" action="controller.jsp">
            <input type="hidden" name="page" value="registration"/>
            <table class="table table-bordered" style="margin: auto;width:80%;">
                <tr>
                    <td>
                        Enter Roll No
                    </td>
                    <td>
                        <input type="number" name="rollno" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Name
                    </td>
                    <td>
                        <input type="text" name="name" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Father Name
                    </td>
                    <td>
                        <input type="text" name="fname" class="form-control"/>
                    </td>
                </tr>    
                <tr>
                    <td>
                        Enter Mother Name
                    </td>
                    <td>
                        <input type="text" name="mname" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Gender
                    </td>
                    <td>
                        <input type="radio" name="gender" value="male" class="form-check-input"/>Male
                        <input type="radio" name="gender" value="female" class="form-check-input"/>Female
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Address
                    </td>
                    <td>
                        <textarea name="address" class="form-control"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Program
                    </td>
                    <td>
                        <select name="program" class="form-control">
                            <option selected>--Select Program--</option>
                            <option value="B.Tech.">B.Tech.</option>
                            <option value="M.Tech.">M.Tech.</option>
                            <option value="Diploma">Diploma</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Branch
                    </td>
                    <td>
                        <select name="branch" class="form-control">
                            <option selected>--Select Branch--</option>
                            <option value="CS">CS</option>
                            <option value="IT">IT</option>
                            <option value="EC">EC</option>
                            <option value="EE">EE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Year
                    </td>
                    <td>
                        <select name="year" class="form-control">
                            <option selected>--Select Year--</option>
                            <option value="First Year">First Year</option>
                            <option value="Second Year">Second Year</option>
                            <option value="Third Year">Third Year</option>
                            <option value="Final Year">Final Year</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Contact No
                    </td>
                    <td>
                        <input type="number" name="contactno" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Email Address
                    </td>
                    <td>
                        <input type="text" name="emailaddress" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Password
                    </td>
                    <td>
                        <input type="password" name="password" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Re-Enter Password
                    </td>
                    <td>
                        <input type="password" name="confirmpassword" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button type="submit" class="btn btn-success">Register</button>
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
