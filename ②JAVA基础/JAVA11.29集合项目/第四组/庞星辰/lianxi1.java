package com.aaa;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.jar.Attributes.Name;

public class lianxi1  {
	
	
	//�밴����1����ѧ��   2��ѯ����ѧ��   3������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ  6�˳�
		public static void main(String[] args) {
			Scanner sc= new Scanner(System.in);
			ArrayList<Student> list=new ArrayList<Student>();
			Shixian a =new Shixian();
			while(true){
				System.out.println("�밴����1����ѧ��   2��ѯ����ѧ��   3������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ  6�˳�");
				int n=sc.nextInt();
				if(n==1){

					
					a.a(sc, list);
				
				}
				if(n==2){

					a.b(list);
				if(n==3){
					a.c(sc, list);
				}
				if(n==4){
					a.d(sc, list);
				
				}
				if(n==5){
					System.out.println("�޸�ѧ����Ϣ");
				}
				if(n==6){
					System.out.println("�˳�");
					break;
				}
			}
	
	
		}
		}
}