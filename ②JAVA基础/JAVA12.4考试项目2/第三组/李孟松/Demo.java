package com.pri;
import java.awt.List;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Scanner;


public class Demo {
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<Demo1>list=new ArrayList<Demo1>();
		
		while(true){
			System.out.println("1.¼��ͨѶ¼��.2.��ʾ����ͨѶ¼�� 3��������4.�Ա�����5.�绰����6.�˳�����");
			int n=sc.nextInt();
			if(n==1){
				//System.out.println("¼��ͨѶ¼");
				System.out.println("��������Ϣ�����磺�������У�110120119");
				Demo1 a=new Demo1();
				String str =sc.next();
				String []arr=str.split(",");
				a.setName(arr[0]);
				a.setSex(arr[1].charAt(0));
				a.setPhonenum(arr[2]);
				list.add(a);
				System.out.println("������");
				
			}else if(n==2){
				System.out.println("��ʾ����ͨѶ¼��");
				for(Demo1 a:list){
					a.info();
				}
				
				
			}else if(n==3){
				//System.out.println("��������");
				System.out.println("����������");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getName())){
						a.info();
						break;
					}
				}
			}else if(n==4){
				//System.out.println("�Ա�����");
				System.out.println("�������Ա�");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getSex())){
						a.info();
						break;
					}
				}
			}else if(n==5){
				//System.out.println("�绰����");
				System.out.println("������绰");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getPhonenum())){
						a.info();
						break;
					}
				}
				
			}else if(n==6){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
		
		
			
	}

}
