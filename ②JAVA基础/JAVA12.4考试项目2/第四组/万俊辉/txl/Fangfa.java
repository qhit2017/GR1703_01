package com.txl;

import java.util.List;
import java.util.Scanner;

public class Fangfa implements Jiekou{

	@Override
	public void cunchu(List<Txl> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������¼����Ϣ;��ʽΪ���������Ա𣬵绰����;���磺�������У�110");
		Txl t = new Txl();
		String str = sc.next();
		String[] arr = str.split("��");
		t.setName(arr[0]);
		t.setSex(arr[1].charAt(0));
		t.setSjh(arr[2]);
		list.add(t);
		System.out.println("¼��ɹ���");
	}

	@Override
	public void bianli(List<Txl> list) {
		// TODO Auto-generated method stub
		for(Txl t:list){
			t.info();
		}
	}

	@Override
	public void xingming(List<Txl> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����������");
		String str = sc.next();
		for(Txl t:list){
			if(str.equals(t.getName())){
				t.info();
			}
		}
	}

	@Override
	public void xingbie(List<Txl> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������Ա�");
		String str = sc.next();
		for(Txl t:list){
			if(str.charAt(0)==t.getSex()){
				t.info();
			}
		}
	}

	@Override
	public void shoujihao(List<Txl> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������ֻ���");
		String str = sc.next();
		for(Txl t:list){
			if(str.equals(t.getSjh())){
				t.info();
			}
		}
	}

}
