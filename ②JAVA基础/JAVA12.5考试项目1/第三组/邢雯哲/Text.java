package com.xingwenzhe;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Text {
	
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		Scanner s=new Scanner(System.in);
		
		while(true){
			System.out.println("请选择 1.录入考生的高考信息 2.显示所有考生信息 3.查询最高分 4.退出");
			int n=s.nextInt();
			if(n==1){
				System.out.println("录入考生信息");
				String str=s.next();
				String []arr=str.split(",");
				Student c=new Student();
				c.setName(arr[0]);
				c.setNo(arr[1]);
				c.setChinese(Integer.parseInt(arr[2]));
				c.setMath(Integer.parseInt(arr[3]));
				c.setEnglish(Integer.parseInt(arr[4]));
				c.setZongchengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(c);
			}else if(n==2){
				System.out.println("显示所有考生信息");
				for(Student d:list){
					d.info();
				}
			}else if(n==3){
				while(true){
					System.out.println("1.打印总分最高分 2.打印数学最高分 3.打印语文最高分 4.打印英语最高分  5.退出");
					int q=s.nextInt();
					if(q==1){
						System.out.println("打印总分最高分");
						int max=0;
						for(Student x:list){
							if(max<x.getZongchengji()){
								max=x.getZongchengji();
								
							}
						
						}	
						System.out.println("最高分"+max);
						}else if(q==2){
					
						System.out.println("打印数学最高分");
						int math=0;
						for(Student z:list){
							if(math<z.getMath()){
								math=z.getMath();
							}
						}
						System.out.println(math);
					}else if(q==3){
						System.out.println("打印语文最高分");
						int chinese=0;
						for(Student a:list){
							if(chinese<a.getChinese()){
								chinese=a.getChinese();
								
							}
						}
						System.out.println(chinese );
					}else if(q==4){
						System.out.println("打印英语最高分");
						int english=0;
						for(Student f:list){
							if(english<f.getEnglish()){
								english=f.getEnglish();
							}
						}
						System.out.println(english);
					}else if(q==5){
						System.out.println("运行结束");
						break;
					}else{
						System.out.println("您输入的数字不正确");
					}
				}
				
			}else if(n==4){
				System.out.println("结束");
				break;
			}else{
				System.out.println("您输入的数字不正确");
			}
		}
	}
}

