package shier;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class si2 {
		public static void main(String[] args) {
			List<ya> list=new ArrayList<ya>();
			
			while (true){
				System.out.println("请输入：1.录入通讯录信息2	.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
				Scanner sc =new Scanner(System.in);
				int run=sc.nextInt();
				if(run==1){
					System.out.println("请输入 通讯信息比如：张三,男,138");
					String str=sc.next();
				String []arr=str.split(",");
					ya a=new ya();
					a.setName(arr[0]);
					a.setSex(arr[1].charAt(0));
					a.setDh(arr[2]);
					list.add(a);
					System.out.println("添加成功");
				}else if(run==2){
					System.out.println("显示所有通讯录信息");
					for(ya i:list){
						i.info();
					}
				}else if(run==3){
					System.out.println("姓名搜索");
					String a=sc.next();
					for(ya i:list){
						if(a.equals(i.getName())){
							i.info();
						}
					}
				}else if(run==4){
					System.out.println("性别搜索");
					String a=sc.next();
					for(ya i:list){
						if(a.charAt(0)==i.getSex()){
							i.info();		
						}
					}
				}else if(run==5){
					System.out.println("电话搜索");
					String a=sc.next();
					for(ya i:list){
						if(a.equals(i.getDh())){
							i.info();
						}
					}
				}else if(run==6){
					System.out.println("程序结束");
					break;
				}
			}
		}
	
	
			
		
}
