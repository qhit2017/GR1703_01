package yz;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<StudentInfo> list =new ArrayList<StudentInfo>();
		
		while(true){
			System.out.println("1.录入考生的高考信息 2.显示所有考生信息 3.查询最高分 4.退出功能");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("请输入考试信息信息包含姓名、编号、语文、数学、英语成绩，总成绩，格式是:张三,10,20,30,40");
				String str =sc.next();
				String[] arr =str.split(",");
				
				StudentInfo si = new StudentInfo();
				si.setName(arr[0]);
				si.setNo(arr[1]);
				si.setChinese(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("添加成功");
				
			}else if(num==2){
				for(StudentInfo si:list){
					si.info();
				}
				
				
			}else if(num==3){
				while(true){
					System.out.println("1.打印总分最高分 2.打印数学最高分 3.打印语文最高分 4.打印英语最高分 5.返回上一层");
					int a =sc.nextInt();
					if(a==1){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getTotal()){
								max=si.getTotal();
							}
						}
						System.out.println("总分最高分"+max);
					}else if(a==2){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getMath()){
								max=si.getMath();
							}
						}
							System.out.println("数学最高分"+max);
						
					}else if(a==3){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getChinese()){
								max=si.getChinese();
							}
						}
						System.out.println("语文最高分"+max);
						
					}else if(a==4){
						int max =0;
						for(StudentInfo si:list){
							if(max<si.getEnglish()){
								max=si.getEnglish();
							}
						}
						System.out.println("英语最高分"+max);
						
					}else if(a==5){
						System.out.println("返回上一层");
						break;
						
					}else{
						System.out.println("您输入的数字不规范，请在输入一次");
					}
				}
				
			}else if(num==4){
				
			}else{
				System.out.println("程序运行结束");
				break;
			}
		}
	}
	
	
	
}
