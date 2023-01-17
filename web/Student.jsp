<%-- 
    Document   : Student
    Created on : 10 Aug, 2022, 10:52:35 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
    </head>
    <body>
        <div id="add">
        <h1>Add Student </h1>
        <form action="StudentController" method="GET">
            <table>
                <tr>
                    <td> Student Name: </td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td> Student Roll No: </td>
                    <td><input type="text" name="rollno"></td>
                </tr>
                <tr>
                    <td> Student Address: </td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td> Student Contact No: </td>
                    <td><input type="text" name="contactno"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="addStudent" value="Add"></td>
                    
                </tr>
            </table>
        </form>
        <form action="StudentController" method="POST">
            <input type="submit" name="showStudent" value="Show"><br>
        </form>
        </div>
            </div>
        </body>
</html>

