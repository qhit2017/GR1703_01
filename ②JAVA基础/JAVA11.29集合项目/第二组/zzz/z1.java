package zzz;

import java.util.ArrayList;
import java.util.Scanner;

public class z1 {
	
	   public static void main(String[] args) {
				   
		   Scanner sc = new Scanner(System.in);
		    ArrayList<z1>list=new  ArrayList<z1>();
		    System.out.println("请输入所提示的数字");
		    
		    while (true) {
		    	System.out.println("1.添加学生  2.查询所有学生  3.查询学生信息  4.修改学生信息  5.删除学生  6.退出");
		    	int i = sc.nextInt();
		    	   if (i==1) { 
		    		System.out.print("请输入添加学生信息,例如:赵云,男,19,太阳系");
		    		String  str = sc.next();
		    		String [] arr = str.split(",");
		    		z1 z = new z1();
		    } else if (i==2) {
		    	    System.out.println("查询所有学生,");
		    	   for(z1 i.list){
		    		   i.info();
		     
		    	   }
		    	    	
		    	    
		    } else if (i==3) {
		    	 System.out.println("请输入你想查询的姓名"); 
		    	    String name =sc.next();
		    	    for(z1 s.list){
		    	    	if(name.equals(s.GetName)){
		    	    		i.info();
		    	    	}	
		    	    	}
			} else if (i==4) {
				 System.out.println("请输入修改学生的姓名");
				
			} else if (i==5) {
				
			} else if (i==6) {
				
			} else {
				System.out.println("你输入的数字有误");

			}{

			}{

			}{

			}{
					
					

				}{
					
				}{

				}
				
			}
		   
		   
		   
		   
		   
		   
	}
 
}
