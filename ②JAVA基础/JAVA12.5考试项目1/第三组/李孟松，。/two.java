package com.procedure;

import java.util.ArrayList;
import java.util.Scanner;

public class two {
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<one>list=new ArrayList<one>();
		
		while(true){
			System.out.println("1¼�뿼���ĸ߿���Ϣ 	2��ʾ���п�����Ϣ	3��ѯ��߷�,����:�ܷ���߷ֺ͵�����߷�	4�˳�����");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("1��¼�뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�");
				String str=sc.next();
				one a=new one();
				String[]arr=str.split(",");
				a.setName(arr[0]);
				a.setBianhao(arr[1]);
				a.setYuwen(Integer.parseInt(arr[2]));
				a.setShuxue(Integer.parseInt(arr[3]));
				a.setYingyu(Integer.parseInt(arr[4]));
				a.setZongfen(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("¼��ɹ�");
				
				
			}else if(n==2){
				System.out.println("2����ʾ���п�����Ϣ������������š����ġ���ѧ��Ӣ��ɼ����ܳɼ�");
				for(one a:list){
					a.info();
				}
			}else if(n==3){
				System.out.println("3�����û�ѡ��3ʱ������ʾһ���Ӳ˵�1	��ӡ�ܷ���߷�2	��ӡ��ѧ��߷�3	��ӡ������߷�4	��ӡӢ����߷�5	�˳�");
				while(true){
					int a=sc.nextInt();
					if(a==1){
						int max=0;
						for(one s:list){
							if(max<s.getZongfen()){
								max=s.getZongfen();
							}
						}
						System.out.println(max);
						
					}else if(a==2){
						int m=0;
						for(one s:list){
							if(m<s.getShuxue()){
								m=s.getShuxue();
							}
						}
						System.out.println(m);
						
					}else if(a==3){
						int y=0;
						for(one s:list){
							if(y<s.getShuxue()){
								y=s.getShuxue();
							}
						}
						System.out.println(y);
						
						
					}else if(a==4){
						int e=0;
						for(one s:list){
							if(e<s.getShuxue()){
								e=s.getShuxue();
							}
						}
						System.out.println(e);
						
						                             
					}else if(a==5){
						break;
					}else{
						System.out.println("����������ֲ��淶");
					}
				}
			}else if(n==4){
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
			
		}
		
		
	}

}
