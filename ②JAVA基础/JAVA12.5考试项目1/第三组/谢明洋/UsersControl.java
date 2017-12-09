package Day1;

import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UsersControl {
	public static void main(String[] args) {
		List<Studentinfo> list=new ArrayList<Studentinfo>();
		Scanner sc=new Scanner(System.in);
		
		while(true){
			System.out.println("请输入操作数字：1.录入考生的高考信息2.显示所有考生信息3.查询最高分4.退出");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("请录入考生的高考信息：姓名,编号,语文成绩,数学成绩,英语成绩");
				Studentinfo si=new Studentinfo();
				String str=sc.next();
				String[] arr=str.split(",");
				si.setName(arr[0]);
				si.setCout(arr[1]);
				si.setYuwen(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("录入成功！");				
			}else if(num==2){
				System.out.println("查询所有学生信息：");
				for(Studentinfo i:list){
					i.info();
				}
			}else if(num==3){
				System.out.println("查询最高分:请输入需要操作的数字:1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
				while(true){
					int n=sc.nextInt();
					if(n==1){
						String name1="";
						int max1=0;
					for(Studentinfo m:list){
						if(max1<m.getTotal()){
							max1=m.getTotal();
							name1=m.getName();
						}
					}					
					System.out.println("总分最高分："+max1+"他的名字是："+name1);	
					
					}else if(n==2){
						String name2="";
						int max2=0;
						for(Studentinfo m:list){
							if(max2<m.getMath()){
								max2=m.getMath();
								name2=m.getName();
							}
						}
						System.out.println("数学最高分："+max2+"他的名字是："+name2);	
						
					}else if(n==3){
						String name3="";
						int max3=0;
						for(Studentinfo m:list){
							if(max3<m.getYuwen()){
								max3=m.getYuwen();
								name3=m.getName();
							}
						}
						System.out.println("语文最高分："+max3+"他的名字是："+name3);	
						
					}else if(n==4){
						String name4="";
						int max4=0;
						for(Studentinfo m:list){
							if(max4<m.getEnglish()){
								max4=m.getEnglish();
								name4=m.getName();
							}
						}
						System.out.println("英语最高分："+max4+"他的名字是："+name4);	
					
					}else if(n==5){
						System.out.println("退出!");
						break;
					}else{					
						System.out.println("您输入的操作不规范，请按要求操作，谢谢！");
						
					}
				}
			}else if(num==4){
				System.out.println("退出");
				break;
			}else{
				System.out.println("您输入的操作不规范！请重新输入，谢谢!");
			}
		
		}
	}

}
