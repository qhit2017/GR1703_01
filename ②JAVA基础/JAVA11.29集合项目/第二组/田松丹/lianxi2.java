package t28;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Scanner;

public class lianxi2 {
public static void main(String[] args) {
	ArrayList<lianxi1>list=new ArrayList<lianxi1>();
	Scanner sc=new Scanner(System.in);
	while(true){
	System.out.println("请输入：1增加学生 2.查询所有学生 3.按照姓名查询学生信息 4.删除学生 5.修改学生信息 6.退出");
	int n=sc.nextInt();
	System.out.println("请输入");
	if(n==1){
		System.out.println("请输入学生信息：如张三   男    18岁  地址上海");
		lianxi1 a=new lianxi1();
		String lianxi1=sc.next();
		String[] arr = lianxi1.split(",");
		int age = Integer.parseInt(arr[2]);
		a.setName(arr[0]);
		a.setXb(arr[1].charAt(0));
		a.setAge(age);
		a.setDz(arr[3]);
		a.info();
		list.add(a);
		System.out.println("增加成功");
		System.out.println();
	}else if(n==2){
			System.out.println();
			System.out.println("查询所有学生:");
			for(lianxi1 a : list){
				a.info();
				System.out.println();
			}
			System.out.println("请输入学生姓名");
			if(n==4){
			String lianxi1=sc.next();
			for(int i=0;i<list.size();i++){
			lianxi1 a =list.get(i);
	
			if(lianxi1.equals(a.getName())){
				list.remove(a);
			}
		
	
		
	}
}
}
}
