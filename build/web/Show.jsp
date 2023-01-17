<%-- 
    Document   : Show
    Created on : 10 Aug, 2022, 11:00:43 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Operation</title>
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
    <body>All Students: <br> 
        <c:forEach var="emp" items="${studentList}">
            Student ID: ${st.id} <br>
            Student Name: ${st.ename} <br>
            Student Roll No: ${st.rollno}<br>
            Student Address: ${st.address}<br>
            Student Contact No: ${st.contactno}<br>
            -------------------------------------<br>
        </c:forEach>
        <form action="EmployeeController" method="POST">
            Update: <input type="checkbox" id="update"> Delete: <input type="checkbox" id="delete" onclick="document.getElementById('name').disabled=this.checked;document.getElementById('contactnoupdate').disabled=this.checked;"><br><br>
            <select name="id">
                <c:forEach items="${studentList}" var="employee">
                <option value="${student.id}">${student.id}</option>
                 </c:forEach>
            </select>
            
            <br>
            Update Name: <input id="name" type="text" name="name"><br>
            Update Contact No: <input id="conatactnoupdate" type="text" name="contactnoupdate"> <br><br>
            <button type="submit" id="updateStudent" name="updateStudent"> Update</button> <br> <br>
            <button type="submit" id="deleteStudent" name="deleteStudent"> Delete </button>
        </form>
    </head>
<body>
        
</body>
</html>

