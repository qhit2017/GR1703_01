package com.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MailListIserviceImpl implements MailListIservice{

	@Override
	public void tianjia(List<MailList>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ͨѶ¼��Ϣ�����磺�������У�123489");
		String n=sc.next();
		String []arr=n.split("��");
		MailList ml=new MailList();
		ml.setName(arr[0]);
		ml.setSex(arr[1].charAt(0));
		ml.setPhonenumber(arr[2]);
		list.add(ml);
		System.out.println("��ӳɹ���");
		
	}

	@Override
	public void findall(List<MailList> list, Scanner sc) {
		// TODO Auto-generated method stub
		for(MailList ml:list){
			ml.info();
		}
	}

	@Override
	public void findname(List<MailList> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���������������磺����");
		String name=sc.next();
		for(MailList ml:list){
			if(name.equals(ml.getName())){
				ml.info();
			}
		}
	}

	@Override
	public void findsex(List<MailList> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������Ա𣬱��磺��");
		String sex=sc.next();
		for(MailList ml:list){
			if(sex.charAt(0)==ml.getSex()){
				ml.info();
			}
		}
	}

	@Override
	public void findnum(List<MailList> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������绰�����磺132456");
		String number=sc.next();
		for(MailList ml:list){
			if(number.equals(ml.getPhonenumber())){
				ml.info();
			}
		}
	}

}
