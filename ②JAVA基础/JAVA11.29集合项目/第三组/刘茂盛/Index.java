package com.zuoye;

import java.util.ArrayList;
import java.util.Scanner;


public class Index {
		//�밴����1 ����ѧ��  2 ��ѯ����ѧ��  3 ������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ 6 �˳�
		public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			ArrayList<Student>list=new ArrayList<Student>();
			while(true){
				System.out.println("�밴����1 ����ѧ��  2 ��ѯ����ѧ��  3 ������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ 6 �˳�");
				int n=sc.nextInt();
				StudentIservice service= new StudentIserviceImpl();
				if(n==1){
					service.tianjia(list,sc);
				}else if(n==2){
					service.findall(list);
				}else if(n==3){
					service.find(sc, list);
					
					
				}else if(n==4){
					service.Del(sc, list);
					
				}else if(n==5){
					service.xiugai(sc, list);
				}else if(n==6){
					System.out.println("�˳�");
				}else{
					System.out.println("��������ʾ�������֣�");
				}
			}
			
				
			
		}

	
}
