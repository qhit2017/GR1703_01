package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Text {
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		List<Project>list=new ArrayList<Project>();
		
		while(true){
			System.out.println("请选择：1.新增商品 2.进货 3.销售 4.参看库存 5.退出");
			Project t=new Project();
			int n=s.nextInt();
			if(n==1){
				System.out.println("新增商品 ：1,读者,6,100");
				String d=s.next();
				String []arr=d.split(",");
				Project b=new Project();
				b.setNo(arr[0]);
				b.setName(arr[1]);
				b.setJiage(Double.parseDouble(arr[2]));
				b.setShuliang(Integer.parseInt(arr[3]));
				list.add(b);
			}else if(n==2){
				System.out.println("请输入编号和数量 如：1,100");
				String x=s.next();
				String []arr=x.split(",");
				
				boolean flag=true;
				
				for(Project p:list){
					if(p.getNo().equals(arr[0])){
						p.setShuliang(p.getShuliang()+Integer.parseInt(arr[1]));
						flag=false;
				     System.out.println("进货成功,当前库存："+p.getShuliang());
						break;
					}
				}
				
					
					
			}else if(n==3){
				System.out.println("请输入商品编号和数量 如：1,50");
				String z=s.next();
				String []arr=z.split(",");
				
				boolean flag=true;
				 
				for(Project q:list){
					if(q.getNo().equals(arr[0])){
						q.setShuliang(q.getShuliang()+Integer.parseInt(arr[1]));
						break;
					}
				}
					
				
						
			}else if(n==4){
				System.out.println("参看库存");
				for(Project p:list){
					p.inf();
					
				}
					
					
			}else if(n==5){
				System.out.println("退出");
			}else{
				System.out.println("您输入的数字不正确");
			}
			
		}
	
	
		
		}	
}


	