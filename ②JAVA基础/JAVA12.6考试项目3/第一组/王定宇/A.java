package com.work;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class A {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Ect> ect =new ArrayList<Ect>();
		
		while(true){
			System.out.println("1.������Ʒ 2.���� 3.���� 4.�ο���� 5.�˳�����");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("������Ʒ��¼����Ʒ��Ϣ������Ʒ��š����ơ��۸񡢳�ʼ���� ��: 001,����,6,100");
				String str =sc.next();
				String[] arr =str.split(",");
				
				Ect e =new Ect();
				e.setBianhao(arr[0]);
				e.setName(arr[1]);
				e.setJiage(Double.parseDouble(arr[2]));
				e.setShuliang(Integer.parseInt(arr[3]));
				
				ect.add(e);
				System.out.println("����ɹ�,�������:"+e.getShuliang());
					
			}else if(num==2){
				System.out.println("������������Ʒ��ź����� ��: 001,50");
				String str =sc.next();
				String[] arr =str.split(",");
				
				String bianhao =arr[0];
				int shuliang=Integer.parseInt(arr[1]);
				
				boolean flag =true;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
				
				for(Ect e:ect){
					if(e.getBianhao().equals(bianhao)){
						e.setShuliang(e.getShuliang()+shuliang);
						
						flag = false;
						System.out.println("�����ɹ�����ǰ���:"+e.getShuliang());
						break;
					}
				}
				if(flag){
					System.out.println("����ʧ��");
				}
			
			}else if(num==3){
				System.out.println("���ۣ�������Ʒ��ź����� ��: 001,10");
				String str =sc.next();
				String[] arr =str.split(",");
				
				String bianhao =arr[0];
				int shuliang =Integer.parseInt(arr[1]);
				
				boolean flag =true;
				
				for(Ect e:ect){
					if(e.getBianhao().equals(bianhao) &&  shuliang<e.getShuliang()){
						e.setShuliang(e.getShuliang()-shuliang);
						flag = false;
						System.out.println("���۳ɹ�����ǰ���:"+e.getShuliang());
						break;
					}
				}
				if(flag){
					System.out.println("����ʧ��");
				}
				
			}else if(num==4){
				
				for(Ect e:ect){
					e.info();
				}
				
			}else if(num==5){
				System.out.println("�������н���");
				break;
				
			}else{
				System.out.println("����������ֲ��淶�����ٴ�����");
			}
		}
		
		
		
	}
}
