package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class Index {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<MailList>list = new ArrayList<MailList>();
		while(true){
			System.out.println("�밴��:1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int numb = sc.nextInt();
			if(numb==1){
				System.out.println("����������,�Ա�,�绰�� ����:����,��,136");
				MailList ml = new MailList();
				String str = sc.next();
				String[]arr = str.split(",");
				ml.setName(arr[0]);
				ml.setSex(arr[1].charAt(0));
				ml.setPhoneNumber(arr[2]);
				list.add(ml);
				System.out.println("��ӳɹ�!");
			}
			else if(numb==2){
				System.out.println("��ʾ����ͨѶ¼��Ϣ");
//				for(MailList i:list){
//					i.info();
//				}
				for(int i=0;i<list.size();i++){
					MailList ml =list.get(i);
					ml.info();
				}
			}
			else if(numb==3){
				System.out.println("����������:");
				String name = sc.next();
				for(MailList ml:list){
					if(name.equals(ml.getName())){
						ml.info();
						break;
					}
				}
			}
			else if(numb==4){
				System.out.println("�������Ա�:");
				Character sex = sc.next().charAt(0);
				for(MailList ml:list){
					if(sex.equals(ml.getSex())){
						ml.info();
						break;
					}
				}
			}
			else if(numb==5){
				System.out.println("������绰��:");
				String phoneNumber = sc.next();
				for(MailList ml:list){
					if(phoneNumber.equals(ml.getPhoneNumber())){
						ml.info();
					}
				}
			}
			else if(numb==6){
				System.out.println("�������");
				break;
			}
			else{
				System.out.println("�������");
			}
		}
	}
}
