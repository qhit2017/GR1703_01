package com.gege;

import java.net.ConnectException;
import java.util.Scanner;

public class O1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i=1;
		while(i==1){
		System.out.println("�����룺1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ");
		int a =sc.nextInt();
		if(a>=0&&a<=5){
			switch(a){
			case 1:{
				System.out.println("���ѧ����");continue;
			}
			case 2:{
				System.out.println("��ѯ����ѧ����");continue;
			}
			case 3:{
				System.out.println("�޸�ѧ����");continue;
			}
			case 4:{
				System.out.println("ɾ��ѧ����");continue;
			}
			case 5:{
				System.out.println("ϵͳ�ѹرգ�");i=2;
			}
			}
			}else{
				System.out.println("���������������");
			}
		}
		
	}
	
}

