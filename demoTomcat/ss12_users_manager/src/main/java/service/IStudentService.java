package service;

import model.Student;

import java.util.List;

public interface IStudentService {
    List<Student> display();
    void add(Student student);
    void delete(int id);
    void edit();
}
