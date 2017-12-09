package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<StudentInfo>list = new ArrayList<StudentInfo>();
		while(true){
			System.out.println("请按键:1.录入考试信息2.显示所有考生信息3.打印最高分4.退出功能");
			int num = sc.nextInt();
			if(num==1){
				System.out.println("请输入考试信息格式为:姓名,编号,语文成绩,数学成绩,英语成绩 例如:张三,123,94,95,96");
				String str = sc.next();
				String []arr = str.split(",");
				
				StudentInfo si = new StudentInfo();
				si.setName(arr[0]);
				si.setNo(arr[1]);
				si.setChinese(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("添加成功!");
			}
			else if(num==2){
				for(StudentInfo si:list){
					si.info();
				}
			}
			else if(num==3){
				while(true){
					System.out.println("1.打印总分最高分2.打印语文最高分3.打印数学最高分4.打印英语最高分5.退出");
					int i = sc.nextInt();
					if(i==1){
						int max = 0;
						for(StudentInfo si:list){
							if(max<si.getTotal()){
								max = si.getTotal();
							}
						}
						System.out.println("总分最高分是:"+max);
					}
					else if(i==2){
						int max = 0;
						for(StudentInfo si:list){
							if(max<si.getChinese()){
								max = si.getChinese();
							}
						}
						System.out.println("语文最高分是:"+max);
					}
					else if(i==3){
						int max = 0;
						for(StudentInfo si:list){
							if(max<si.getMath()){
								max = si.getMath();
							}
						}
						System.out.println("数学最高分是:"+max);
					}
					else if(i==4){
						int max = 0;
						for(StudentInfo si:list){
							if(max<si.getEnglish()){
								max = si.getEnglish();
						}
					}
					System.out.println("英语最高分是:"+max);
					}
					else if(i==5){
						System.out.println("返回上一级");
						break;
					}
					else{
						System.out.println("您的输入有误!");
					}
				}
			}
			else if(num==4){
				System.out.println("程序结束");
				break;
			}
			else{
				System.out.println("您的输入有误!");
			}
		}
	}
}
