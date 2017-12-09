package lx;

import java.util.List;
import java.util.Scanner;

public interface StudentIservice {
	
	void insert(List<Student> list,Scanner sc);
	
	void findAll(List<Student> list);

	void findByName(List<Student> list,Scanner sc);
	
	void delete(List<Student> list,Scanner sc);
	
	void update(List<Student> list, Scanner sc);
}
