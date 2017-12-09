package Mproject;

import java.util.ArrayList;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		 StudentIService service = new StudentServiceImpl();
		 ArrayList<Student>list = new ArrayList<Student>();
		 while(true){
			 System.out.println("请按键1.增加学生2.查询所有学生3.按照姓名查询学生4.删除学生5.修改学生信息6.退出");
		 int n = sc.nextInt();
			 if(n==1){	 
				 System.out.println("请输入学生信息,比如:张三,男,15,北京");
				 service.insert(list, sc);
			 }
			 else if(n==2){
				 service.findAll(list);
			 }
			 else if(n==3){
				 System.out.println("请输入学生姓名:");
				 service.findByName(list, sc);
			 }
			 else if(n==4){
				 System.out.println("请输入学生姓名:");
				 service.delete(list, sc);
			 }
			 else if(n==5){
				 System.out.println("请输入学生姓名以及新的年龄,例如:张三,15");
				 service.modifyInfo(list, sc);
			 }
			 else{
				 System.out.println("程序结束");
			 break;
		 }
	}
}
