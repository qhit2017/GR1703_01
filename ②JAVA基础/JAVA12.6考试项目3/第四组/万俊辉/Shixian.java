package com.wjh;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Shixian {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Shopping> list = new ArrayList<Shopping>();
		while(true){
			System.out.println("1.�洢��Ʒ   2.����   3.����   4.�鿴���   5.���ۼ�¼  6.�����¼   7.�˳�\n������");
			int sum = sc.nextInt();
			if(sum==1){
				System.out.println("����д��Ʒ��Ϣ����ţ��������۸����������磺1�������棬5��20");
				String  str = sc.next();
				String[] arr = str.split("��");
				Shopping sp = new Shopping();
				boolean b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()||arr[1].equals(s.getName())){
						b=false;
						System.out.println("�ñ���ѱ�������и���Ʒ.");
						break;
					}
				}
				if(b){
					sp.setBianhao(Integer.parseInt(arr[0]));
					sp.setName(arr[1]);
					sp.setJiage(Integer.parseInt(arr[2]));
					sp.setShuliang(Integer.parseInt(arr[3]));
					sp.setName1(arr[1]);
					sp.setName2(arr[1]);
					list.add(sp);
					System.out.println("�洢�ɹ���");				
				}
			}else if(sum==2){
				System.out.println("�����������Ʒ��ź���������ʽΪ�����,����");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()){
						s.setShuliang(s.getShuliang()+Integer.parseInt(arr[1]));
						s.setShuliang2(s.getShuliang2()+Integer.parseInt(arr[1]));
						b=false;
						System.out.println("�����ɹ�.");
						break;
					}
				}
				if(b){
					System.out.println("����ʧ��.");
				}
			}else if(sum==3){
				System.out.println("������������Ʒ�ı�ź���������ʽΪ�����,����");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean  b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()&&Integer.parseInt(arr[1])<=s.getShuliang()){
						s.setShuliang(s.getShuliang()-Integer.parseInt(arr[1]));
						s.setShuliang1(s.getShuliang1()+Integer.parseInt(arr[1]));
						b=false;
						System.out.println("���۳ɹ�.");
						break;
					}
				}
				if(b){
					System.out.println("����ʧ��.");
				}
			}else if(sum==4){
				for(Shopping sp:list){
					sp.info();
				}
			}else if(sum==5){
				long a = 0;
				for(Shopping s:list){
					s.xse();
					a=a+s.getZzonge();
				}
				System.out.println("�����ܶ�Ϊ��"+a+".");
			}else if(sum==6){
				for(Shopping s:list){
					s.jr();
				}
			}else if(sum==7){
				System.out.println("�˳�ϵͳ.");
				break;
			}else{
				System.out.println("�Բ���,���������������,����������.");				
			}
			
		}
		
	}

}
