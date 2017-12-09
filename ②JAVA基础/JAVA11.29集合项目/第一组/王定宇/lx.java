package lx;

import java.util.ArrayList;
import java.util.Scanner;


public class lx {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		StudentIservice service =new StudentServiceImpl();
		ArrayList<Student> list = new ArrayList<Student>();
		while(true){
			System.out.println("请按键 1.增加学生 2.查询所有学生 3.按照姓名查询学生信息 4.删除学生 5.修改学生信息 6.退出");
			int n =sc.nextInt();
			if(n==1){
				//添加方法
				service.insert(list, sc);
			}else if(n==2){
				//查询所有
				service.findAll(list);
			}else if(n==3){
				//按照姓名查询
				service.findByName(list, sc);
			}else if(n==4){
				//删除学生
				service.delete(list, sc);
			}else if(n==5){
				//修改学生信息
				service.update(list, sc);
			}else if(n==6){
				System.out.println("程序结束");
				break;
			}
			
			
			
			
		}
		
		
	}
}
