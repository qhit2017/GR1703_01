package ¿ÎÌÃÁ·Ï°;

import java.util.List;
import java.util.Scanner;

public interface StudentInface {
	
	void insert(List<Student> list,Scanner sc);
	void findAll(List<Student> list); 
	void findByname(List<Student> list, Scanner sc);
	void delete(List<Student> list, Scanner sc);
	void update(List<Student> list, Scanner sc);

}
