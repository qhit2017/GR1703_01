package com.shijiuhao;

import java.awt.List;
import java.util.Scanner;

public interface StudentISevsrvice {

		void insert(Scanner sc,java.util.List<Student>java);
		void findAll(java.util.List<Student> list);
		void bindName(java.util.List<Student> list);
		void Delete(Scanner sc,java.util.List<Student>list);
		void update(Scanner sc,java.util.List<Student>list);
}
