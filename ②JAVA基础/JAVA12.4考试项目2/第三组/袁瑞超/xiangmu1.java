package com.z;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmu1 {
	public static void main(String[] args) {
	//�밴����1.¼��ͨѶ¼ 2.��ʾ����ͨѶ¼ 3.�������� 4.�Ա����� 5.�绰����  6.�������н���	
	List<xinxi>list=new ArrayList<xinxi>();
		Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println("�밴����1.¼��ͨѶ¼  2.��ʾ����ͨѶ¼  3.��������  4.�Ա�����  5.�绰����  6.�������н���");
	int	 i=sc.nextInt();
		
	
	if(i==1){
		System.out.println("����1.¼��ͨѶ¼��ʽ���������Ա𣬵绰�������������У�136");
	xinxi a=new xinxi();
	String str=sc.next();
	String []arr=str.split("��");
	a.setName(arr[0]);
	a.setSex(arr[1].charAt(0));
	a.setDianhua(arr[2]);
	list.add(a); 
	System.out.println("��ӳɹ���");
	}else if(i==2){
		System.out.println("����2����ʾ����ͨѶ¼");
	}else if(i==3){
		System.out.println("����3����������");
	}else if(i==4){
		System.out.println("����4���Ա�����");
	}else if(i==5){
		System.out.println("����5���绰����");
	}else if(i==6){
		System.out.println("����6���������н���");
		break;
	}else{
		System.out.println("������İ�������ȷ��");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	}
	




}
