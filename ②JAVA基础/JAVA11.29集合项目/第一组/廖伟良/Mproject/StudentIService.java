package Mproject;

import java.util.List;
import java.util.Scanner;

public interface StudentIService {
	void insert(List<Student> list, Scanner sc);
	void findAll(List<Student> list);
	void findByName(List<Student>list,Scanner sc);
	void delete(List<Student>list,Scanner sc);
	void modifyInfo(List<Student>list,Scanner sc);
}
