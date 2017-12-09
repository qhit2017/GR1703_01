package com.zuoye;

import java.util.List;
import java.util.Scanner;

public interface StudentIservice {
	void tianjia(List<Student> list, Scanner sc);
	void findall(List<Student>list);
	void find(Scanner sc,List<Student> list);
	void Del(Scanner sc,List<Student> list);
	void xiugai(Scanner sc,List<Student> list);

}
