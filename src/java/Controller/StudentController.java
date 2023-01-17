/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javainfinite.StudentDAOImpl.StudentDaoImpl;
import javainfinite.pojo.StudentDetails;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class StudentController extends HttpServlet {

        StudentDetails student = new StudentDetails();
        StudentDaoImpl studentDaoImpl = new StudentDaoImpl();
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         if(request.getParameter("addStudent")!=null){
            String name = request.getParameter("name");
            String rollno = request.getParameter("rollno");
            String address = request.getParameter("address");
            String contactno = request.getParameter("contactno");
            student.setName(name);
            student.setRollno(rollno);
            student.setAddress(address);
            student.setContactno(contactno);
            studentDaoImpl.saveStudent(student);
            RequestDispatcher rd = request.getRequestDispatcher("StudentAdd.jsp");
            rd.forward(request, response);
        }
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("showStudent")!=null){
            List<StudentDetails> studentList = new ArrayList();
            studentList = studentDaoImpl.showAllStudent();
            request.setAttribute("studentList", studentList);
            RequestDispatcher rd = request.getRequestDispatcher("ShowAll.jsp");
            rd.forward(request, response);
        }
         
          if(request.getParameter("updateStudent")!=null){
             int id1 = Integer.parseInt(request.getParameter("id"));
             String name = request.getParameter("name");
             String rollno = request.getParameter("rollno");
             String address=request.getParameter("address");
             String contactno=request.getParameter("contactno");
             studentDaoImpl.updateStudent(id1, name, rollno, address, contactno);
             
             RequestDispatcher rd = request.getRequestDispatcher("StudentAdd.jsp");
             rd.forward(request, response);
             
         }
          
         if(request.getParameter("deleteStudent")!=null){
             int id2 = Integer.parseInt(request.getParameter("id"));
             student.setId(id2);
             studentDaoImpl.deleteStudent(student);
              RequestDispatcher rd = request.getRequestDispatcher("StudentAdd.jsp");
            rd.forward(request, response);
         }
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
