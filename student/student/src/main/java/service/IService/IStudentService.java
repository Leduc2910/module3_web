package service.IService;

import java.util.ArrayList;

public interface IStudentService<E> {
    boolean add(E e);
    int findByID(int id);
    boolean edit(int id, E e);
    boolean delete(int id);
    ArrayList<E> findAll();
}
