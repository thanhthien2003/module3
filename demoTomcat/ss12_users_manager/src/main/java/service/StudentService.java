package service;

import model.Student;
import repository.IStudentRepo;
import repository.StudentRepo;

import java.util.List;

public class StudentService implements IStudentService{
    IStudentRepo studentRepo = new StudentRepo();
    @Override
    public List<Student> display() {
        return studentRepo.display();
    }

    @Override
    public void add(Student student) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void edit() {

    }
}
