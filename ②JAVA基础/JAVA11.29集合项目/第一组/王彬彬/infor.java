package com.infor;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class infor {

	public static  void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);			
		List<Student>list1=new ArrayList<Student>();
		StudentImp ser=new StudentImp();
		
		for(int a =1;a==1;){
			System.out.println("请输入：");
			System.out.println("1：添加学生信息"+"2：查看所有学生信息"+"3：查询某位学生信息"+"4：删除学生信息"+"5：修改学生信息"+"6：退出程序");
			String num=sc.next();
			if(num.equals("1")){
				//添加学生信息
				ser.insert(sc, list1);
			}else if(num.equals("2")){
				//查看所有学生信息
				ser.findall(list1);
			}else if(num.equals("3")){
				//查询某位学生信息
					ser.findone(list1,sc);
			}else if(num.equals("4")){
				//删除学生信息
				ser.deleteone(list1,sc);
			}else if(num.equals("5")){
				//修改学生信息
				ser.changeone(list1, sc);
			}else if(num.equals("6")){
				System.out.println("程序结束");
				break ;
			}else{
				System.out.println("您输入的数字有误,请重新输入！！！");
				continue;
			}
			}
		
		
		
		
		
		
		
}
	
	}
	

