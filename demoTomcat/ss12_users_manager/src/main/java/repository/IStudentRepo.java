package repository;

import model.Student;

import java.util.List;

public interface IStudentRepo {
    List<Student> display();
    void add(Student student);
    void delete(int id);
}
