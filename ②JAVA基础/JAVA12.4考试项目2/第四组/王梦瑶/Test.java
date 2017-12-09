package zailian;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<student> list =new ArrayList<student>();
		stujei j=new studentshi();
		while(true){
			System.out.println("1.录入学生的考试信息2.显示所有考生信息3.查询最高分4.退出功能");
			int t=sc.nextInt();
			if(t==1){
				//录入学生的考试信息
				j.add(list, sc);
			}else if(t==2){
				//显示所有考生信息
				j.fiandall(list);
				
			}else if(t==3){
				//查询最高分
				j.fiandzui(list, sc);
					
						
					
			
		}else if(t==4){
			System.out.println("结束");
			
		}else {
			System.out.println("你输入的数我不认识");
		}
		}		
	}

}	

