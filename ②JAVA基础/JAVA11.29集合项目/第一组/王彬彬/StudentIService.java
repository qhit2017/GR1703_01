package com.infor;

import java.util.List;
import java.util.Scanner;

public interface StudentIService {
		
		void insert(Scanner sc,List<Student> list);
		void findall(List<Student> list);
		void findone(List<Student> list,Scanner sc);
		void deleteone(List<Student> list,Scanner sc);
		void changeone(List<Student> list,Scanner sc);
	
	
	
}
