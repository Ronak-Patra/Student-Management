/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java.DAO;

import java.pojo.StudentDetails;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public interface StudentDao {
    
    public void saveStudent (StudentDetails student);
    public List<StudentDetails> showAllStudent();
    public void updateStudent (int id, String name, String rollno, String address, String contactno);
    public void deleteStudent (StudentDetails student);
    
}
