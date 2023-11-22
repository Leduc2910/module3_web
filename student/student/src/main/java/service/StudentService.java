package service;

import model.Student;
import service.IService.IStudentService;

import java.util.ArrayList;

public class StudentService implements IStudentService<Student> {
    ArrayList<Student> list = new ArrayList<>();

    public StudentService() {
        list.add(new Student(1, 20, "Duc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBFUfLw2ycn4Kw_9T5VYE0v5B61TTiGFLtQ&usqp=CAU"));
        list.add(new Student(2, 20, "De", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBFUfLw2ycn4Kw_9T5VYE0v5B61TTiGFLtQ&usqp=CAU"));
        list.add(new Student(3, 19, "Dan", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBFUfLw2ycn4Kw_9T5VYE0v5B61TTiGFLtQ&usqp=CAU"));
    }

    @Override
    public boolean add(Student student) {
        list.add(student);
        return true;
    }

    @Override
    public int findByID(int id) {
        for (int i = 0; i < list.size(); i++) {
            if (id == list.get(i).getId()) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public boolean edit(int id, Student student) {
        int index = findByID(id);
        list.set(index, student);
        return true;
    }

    @Override
    public boolean delete(int id) {
        int index = findByID(id);
        list.remove(index);
        return true;
    }

    @Override
    public ArrayList<Student> findAll() {
        return list;
    }
}
