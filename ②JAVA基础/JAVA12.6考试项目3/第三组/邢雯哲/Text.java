package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Text {
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		List<Project>list=new ArrayList<Project>();
		
		while(true){
			System.out.println("��ѡ��1.������Ʒ 2.���� 3.���� 4.�ο���� 5.�˳�");
			Project t=new Project();
			int n=s.nextInt();
			if(n==1){
				System.out.println("������Ʒ ��1,����,6,100");
				String d=s.next();
				String []arr=d.split(",");
				Project b=new Project();
				b.setNo(arr[0]);
				b.setName(arr[1]);
				b.setJiage(Double.parseDouble(arr[2]));
				b.setShuliang(Integer.parseInt(arr[3]));
				list.add(b);
			}else if(n==2){
				System.out.println("�������ź����� �磺1,100");
				String x=s.next();
				String []arr=x.split(",");
				
				boolean flag=true;
				
				for(Project p:list){
					if(p.getNo().equals(arr[0])){
						p.setShuliang(p.getShuliang()+Integer.parseInt(arr[1]));
						flag=false;
				     System.out.println("�����ɹ�,��ǰ��棺"+p.getShuliang());
						break;
					}
				}
				
					
					
			}else if(n==3){
				System.out.println("��������Ʒ��ź����� �磺1,50");
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
				System.out.println("�ο����");
				for(Project p:list){
					p.inf();
					
				}
					
					
			}else if(n==5){
				System.out.println("�˳�");
			}else{
				System.out.println("����������ֲ���ȷ");
			}
			
		}
	
	
		
		}	
}


	