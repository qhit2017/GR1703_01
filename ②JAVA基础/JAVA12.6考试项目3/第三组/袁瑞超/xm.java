package com.zxiangmu;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xm {
	//1��������Ʒ��¼����Ʒ��Ϣ������Ʒ��š����ơ��۸񡢳�ʼ����
	//2��������������Ʒ��ź����������д˱����Ʒ����������Ӧ��������û������ʾ����ʧ�ܡ�
	//3�����ۣ�������Ʒ��ź����������д˱����Ʒ����Ʒ�������������������������Ӧ������������ʾ����ʧ�ܡ�
	//4���ο���������ʾ������Ʒ��Ϣ������Ʒ��š����ơ��۸�����
	//5���˳����ܿ����˳�ϵͳ

	public static void main(String[] args) {
		List<xinxi> list=new ArrayList<xinxi>();
		Scanner Sc=new Scanner(System.in);
	while(true){
		System.out.println("1.������Ʒ   2.����   3.����  4.�ο����   5.�˳�����  ");
	  int n=Sc.nextInt();
	if(n==1){
		System.out.println("������������Ʒ  ��ʽ�����,����,�۸�,��ʼ����,����45,�������,60,50");
		String str=Sc.next();
		String [] arr =str.split(",");
		xinxi  xi=new  xinxi();
		xi.setBianhao(arr[0]);
		xi.setName(arr[1]);
		xi.setJiage(Integer.parseInt(arr[2]));
		xi.setChushishuliang(Integer.parseInt(arr[3]));
		list.add(xi);
	System.out.println("��ӳɹ���");
	}else if(n==2){
		System.out.println("������������,����,��:01,50");
	String str=Sc.next();
	String [] arr=str.split(",");
	String a=arr[0];
	int b=  Integer.parseInt(arr[1]);
	boolean flag=true;
	for(xinxi e:list){
		if(e.equals(e.getBianhao())){
		e.setBianhao(e.getBianhao()+b);	
		flag=false;
			System.out.println("�����ɹ���");
		break;
		
		}
	}
	if(flag){
		System.out.println("����ʧ��!");
	}
	
	
	}else if(n==3){
		System.out.println("���������۱��,����,����02,50��");
	String str=Sc.next();
	String []arr=str.split(",");
	String a=arr[0];
	int b=Integer.parseInt(arr[1]);
	boolean flag =true;
	for(xinxi e:list){
		if(a.equals(e.getBianhao())&&e.getChushishuliang()>=b){
		e.setChushishuliang(e.getChushishuliang()-b);
		flag=false;
		System.out.println("���۳ɹ���");
		break;
		}
	}
	if(flag){
		System.out.println("����ʧ�ܣ�");
	}
	
	}else if(n==4){
		System.out.println("�ο����");
	for(xinxi a:list){
		a.info();
	}
	
	
	
	}else if(n==5){
		System.out.println("�˳�");
		break;
	}else{
		System.out.println("������Ĳ��淶��");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
	
	
	}




}
