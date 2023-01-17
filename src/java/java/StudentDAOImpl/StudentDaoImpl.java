/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java.StudentDAOImpl;

import java.pojo.StudentDetails;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author LENOVO
 */
public class StudentDaoImpl {
     public void saveStudent(StudentDetails student) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(student);
        transaction.commit();
        session.close();
     }
     public List<StudentDetails> showAllStudents() {
         List<StudentDetails> studentList = new ArrayList();
         Session session = HibernateUtil.getSessionFactory().openSession();
         Query query = session.createQuery("From StudentDetails");
         studentList = query.list();
         return studentList;
     }
     public void updateStudent(int id, String name, String rollno, String address, String contactno) {
         Session session = HibernateUtil.getSessionFactory().openSession();
         Transaction transaction = session.beginTransaction();
         StudentDetails stdetails = (StudentDetails)session.load(StudentDetails.class, id);
         stdetails.setName(name);
         stdetails.setRollno(rollno);
         stdetails.setAddress(address);
         stdetails.setContactno(contactno);
         session.update(stdetails);
         transaction.commit();
         session.close();  
     }
     public void deleteStudent(StudentDetails student) {
         Session session = HibernateUtil.getSessionFactory().openSession();
         Transaction transaction = session.beginTransaction();
         session.delete(student);
         transaction.commit();
         session.close();
    }
}
