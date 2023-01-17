<%-- 
    Document   : ShowAll
    Created on : 5 Aug, 2022, 4:22:03 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management System</title>
        <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
$(document).ready(function(){
    $("#deleteStudent").hide();
     $("#updateStudent").hide();
    
    $("#update").click(function(){
        $("#updateStudent").show();
        $("#deleteStudent").hide();
    });
    $("#delete").click(function(){
        $("#deleteStudent").show();
         $("#updateStudent").hide();
    });
});
</script>

    </head>
    <body>
All Student: <br> 
        <c:forEach var="st" items="${studentList}">
            Student ID: ${st.id} <br>
            Student Name: ${st.name} <br>
            Student Roll Number: ${st.rollno}<br>
            Student Address: ${st.address}<br>
            Student Contact No: ${st.contactno}<br>
            -------------------------------------<br>
        </c:forEach>
        <form action="StudentController" method="POST">
            Update: <input type="checkbox" id="update"> Delete: <input type="checkbox" id="delete" onclick="document.getElementById('name').disabled=this.checked;document.getElementById('rollno').disabled=this.checked;document.getElementById('address').disabled=this.checked;document.getElementById('contactno').disabled=this.checked;"><br><br>
            <select name="id">
                <c:forEach items="${studentList}" var="student">
                <option value="${student.id}">${student.id}</option>
                 </c:forEach>
            </select>
            
            <br>
            Update Name: <input id="name" type="text" name="name"><br>
            Update Roll Number: <input id="rollno" type="text" name="rollno"> <br><br>
            Update Address: <input id="address" type="text" name="address"> <br><br>
            Update Contact No: <input id="contactno" type="text" name="contactno"> <br><br>
            <button type="submit" id="updateStudent" name="updateStudent"> Update</button> <br> <br>
            <button type="submit" id="deleteStudent" name="deleteStudent"> Delete </button>
            
            
               
       
        </form></head>
    <body>
        
    </body>
</html>
