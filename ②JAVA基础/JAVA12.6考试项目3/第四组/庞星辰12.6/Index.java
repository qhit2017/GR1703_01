package com.Kaoshi2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<Goods> list = new ArrayList<Goods>();
		while(true){
			System.out.println("1.������Ʒ2.����3.����4.�鿴���5.�˳�");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("������Ʒ  ���,����,�۸�,�������  ����:001,Ͱ��,5,100");
				String str = sc.next();
				Goods  g=new Goods();
				String[] arr=str.split(",");
				g.setNumber(arr[0]);
				g.setName(arr[1]);
				g.setCost(Double.parseDouble(arr[2]));
				g.setCount(Integer.parseInt(arr[3]));
				list.add(g);
				System.out.println("�����ɣ�");
			}else if(a==2){
				System.out.println("����");
				String str = sc.next();
				String[] arr =str.split(",");
				String number=arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean i=true;
				for(Goods g:list){
					if(number.equals(g.getNumber())){
						g.setCount(g.getCount()+count);
						System.out.println("�����ɹ�"+g.getCount());
						i=false;
						break;
					}
				}
					if(i){
					System.out.println("����ʧ��");
					}
			}else if(a==3){
				System.out.println("����");
				String str = sc.next();
				String[] arr =str.split(",");
				String number=arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean i =true;
				for(Goods g:list){
					if(number.equals(g.getNumber())&& count<=g.getCount()){
						g.setCount(g.getCount()-count);
						System.out.println("���۳ɹ�"+g.getCount());
						i=false;
						break;
					}
				}
					if(i){
						System.out.println("����ʧ��");
					}
				
			}else if(a==4){
				System.out.println("�鿴���");
				for(Goods g:list){
					g.info();
				}
			}else if(a==5){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("���������������,����������:");
			}
		}
		
		
		
	}
	
	
	
	
}
