package com.Kaoshi1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.gongchen.Student;

public class Index {

	public static void main(String[] args) {
		Scanner  sc = new Scanner(System.in);
		List<StudentiInfo> list = new ArrayList<StudentiInfo>();
		
		while(true){
			System.out.println("1.录入考生高考信息2.显示所有考生信息3.查询最高分4.退出");
			int a = sc.nextInt();
			if(a==1){
				System.out.println("录入考生高考信息  姓名,编号,语文成绩,数学成绩,英语成绩  例如：张三,1234,120,102,90");
				String str = sc.next();
				StudentiInfo si = new StudentiInfo();
				String[] arr= str.split(",");
				si.setName(arr[0]);
				si.setNumber(arr[1]);
				si.setYuwenchengji(Integer.parseInt(arr[2]));
				si.setShuxuechengji(Integer.parseInt(arr[3]));
				si.setYingyuchengji(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("添加成功！");
				
			}else if(a==2){
				System.out.println("显示所有考生信息");
				for(StudentiInfo i:list){
					i.info();
				}
				
			}else if(a==3){
				System.out.println("查询最高分");
				while(true){
					System.out.println("1.最高总成绩2.语文最高分3.数学最高分4.英语最高分5.退出");
					int b = sc.nextInt();
					if(b==1){
						int max=0;
						for(StudentiInfo i:list){
							if(max<i.getTotal()){
								max=i.getTotal();
							}
						}
						System.out.println("最高分是"+max);
					}else if(b==2){
						int yuwenmax = 0;
						for(StudentiInfo si:list){
							if(yuwenmax<si.getYuwenchengji()){
								yuwenmax=si.getYingyuchengji();
							}
						}
						
						System.out.println("语文最高分"+yuwenmax);
					}else if(b==3){
						int shuxuemax=0;
						for(StudentiInfo si:list){
							if(shuxuemax<si.getShuxuechengji()){
								shuxuemax=si.getShuxuechengji();
							}
						}
						System.out.println("数学最高分"+shuxuemax);
					}else if(b==4){
						int yingyumax=0;
						for(StudentiInfo si:list){
							if(yingyumax<si.getYingyuchengji()){
								yingyumax=si.getYingyuchengji();
							}
						}
						System.out.println("英语最高分"+yingyumax);
					}else if(b==5){
						System.out.println("返回到主界面");
						break;
					}else{
						System.out.println("你输入的数字有误,请重新输入！");
					}
				}
			}else if(a==4){
				System.out.println("退出程序");
				break;
			}else{
				System.out.println("你输入的数字有误,请重新输入！");
			}
		}
		
		
		
	}
	
	
}
