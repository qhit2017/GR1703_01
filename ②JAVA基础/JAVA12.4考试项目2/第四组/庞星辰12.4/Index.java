package com.KaoShi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		Realize j = new Realize();
		Scanner sc = new Scanner(System.in);
		List<AddressList> list = new ArrayList<AddressList>();
		while(true){
			System.out.println("1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.����������4.���Ա�����5.���绰����6.�˳�����");
			int a = sc.nextInt();
			if(a==1){
//				System.out.println("���ͨѶ¼��Ϣ   ���磺����,��,188");
//				AddressList a1 = new AddressList();
//				String str = sc.next();
//				String[] arr = str.split(",");
//				a1.setName(arr[0]);
//				a1.setSex(arr[1].charAt(0));
//				a1.setDianhua(arr[2]);
//				list.add(a1);
//				System.out.println("����ɹ�");
				j.addto(list, sc);
				
			}else if(a==2){
//				System.out.println("��ʾ����ͨѶ¼��Ϣ");
//				for(AddressList i:list){
//					i.info();
//				}
				j.xianshisuoyou(list);
				
			}else if(a==3){
//				System.out.println("����������");
//				String name = sc.next();
//				for(AddressList i:list){
//					if(name.equals(i.getName())){
//						i.info();
//					}
//				}
				j.queryName(list, sc);
			}else if(a==4){
//				System.out.println("���Ա�����");
//				String sex = sc.next();
//				for(AddressList i:list){
//					if(sex.charAt(0)==i.getSex()){
//						i.info();
//					}
//				}
				j.querySex(list, sc);
				
			}else if(a==5){
//				System.out.println("���绰����");
//				String dianhua = sc.next();
//				for(int s=0;s<list.size();s++){
//					AddressList i=list.get(s);
//					if(dianhua.equals(i.getDianhua())){
//						i.info();
//					}
//					
//				}
				j.queryDianhua(list, sc);
				
			}else if(a==6){
				System.out.println("6.��ѯ����");
				break;
			}
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
}
