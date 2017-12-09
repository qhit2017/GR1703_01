package com.kaoti1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		StudentIservice service=new StudentIserviceImpl();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("请输入：1录入考生的高考信息2显示所有考生信息3查询最高分, 包括: 总分最高分 和 单科最高分4退出功能");
			int n= sc.nextInt();
			if(n==1){
				service.tianjia(list, sc);
			}else if(n==2){
				service.findall(list, sc);
			}else if(n==3){
				service.findmax(list, sc);
			}else if(n==4){
				System.out.println("退出");
				break;
			}else{
				System.out.println("请按提示输入！");
			}
		}
	}

}
