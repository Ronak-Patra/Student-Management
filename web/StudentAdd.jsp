<%-- 
    Document   : EmployeeAdd
    Created on : 5 Aug, 2022, 4:21:07 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
        <style>
                     
  #feedback-form {
  width: 280px;
  margin: 0 auto;
  background-color: #fcfcfc;
  padding: 20px 50px 40px;
  box-shadow: 1px 4px 10px 1px #aaa;
  font-family: sans-serif;
}

#feedback-form * {
    box-sizing: border-box;
}

#feedback-form h2{
  text-align: center;
  margin-bottom: 30px;
}

#feedback-form input {
  margin-bottom: 15px;
}

#feedback-form input[type=text] {
  display: block;
  height: 32px;
  padding: 6px 16px;
  width: 100%;
  border: none;
  background-color: #f3f3f3;
}

#feedback-form label {
  color: #777;
  font-size: 0.8em;
}


#feedback-form button[type=submit] {
  display: flex;
  margin: 20px auto 0;
  width: 150px;
  height: 40px;
  border-radius: 25px;
  border: none;
  color: #eee;
  font-weight: 700;
  box-shadow: 1px 4px 10px 1px #aaa;
  
  background: #207cca; /* Old browsers */
  background: -moz-linear-gradient(left, #207cca 0%, #9f58a3 100%); /* FF3.6-15 */
  background: -webkit-linear-gradient(left, #207cca 0%,#9f58a3 100%); /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(to right, #207cca 0%,#9f58a3 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#207cca', endColorstr='#9f58a3',GradientType=1 ); /* IE6-9 */
}
        </style>
    </head>
    <body>
        <div id="add">
            <div id="feedback-form">
        <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            Add Employee </h1>
        <div id="feedback-form">
        <form action="StudentController" method="GET">
            <table>
                <tr>
                    <td> Student Name: </td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td> Roll Number: </td>
                    <td><input type="text" name="rollno"></td>
                </tr>
                <tr>
                    <td> Address: </td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td> Contact No: </td>
                    <td><input type="text" name="contactno"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="addStudent" value="Add"></td>
                    
                </tr>
            </table>
        </form>
        <form action="StudentController" method="POST">
            <input type="submit" name="showStudent" value="Show"> &nbsp; &nbsp;<br>
            
            
        </form>
                    </div>
            </div>
    </body>
</html>
