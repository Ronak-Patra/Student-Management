/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javainfinite.DAO;

import java.util.List;
import javainfinite.pojo.StudentDetails;

/**
 *
 * @author DELL
 */
public interface StudentDao {
    public void saveStudent (StudentDetails student);
    public List<StudentDetails> showAllStudent();
    public void updateStudent (int id, String name, String rollno, String address, String contactno);
    public void deleteStudent (StudentDetails student);
}
