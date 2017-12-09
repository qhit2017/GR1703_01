package 课堂练习;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Work1 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		List<Student> list=new ArrayList<Student>();
		StudentInface service=new StudentService(); 
	while(true){	
		System.out.println("请输入数字进行如下操作：1 增加学生 2 查询所有学生 3 按照姓名查询学生信息 4 删除学生 5 修改学生信息 6 退出");
		int n=sc.nextInt();
		if(n==1){
			service.insert(list, sc);
		}else	if(n==2){
			service.findAll(list);			
			
		}else	if(n==3){
			service.findByname(list, sc);
		}else	if(n==4){
			service.delete(list, sc);		
		}else	if(n==5){
			service.update(list, sc);		
		}else	if(n==6){
			System.out.println("退出");
			break;
		}else{
			System.out.println("您输入的数字不在操作范围！");			
		}
		
	}
	}
}
