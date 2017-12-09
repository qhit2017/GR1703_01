package com.txl;

import java.util.List;
import java.util.Scanner;

public class Fangfa implements Jiekou{

	@Override
	public void cunchu(List<Txl> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入录入信息;格式为：姓名，性别，电话号码;例如：张三，男，110");
		Txl t = new Txl();
		String str = sc.next();
		String[] arr = str.split("，");
		t.setName(arr[0]);
		t.setSex(arr[1].charAt(0));
		t.setSjh(arr[2]);
		list.add(t);
		System.out.println("录入成功！");
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
		System.out.println("请输入姓名");
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
		System.out.println("请输入性别");
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
		System.out.println("请输入手机号");
		String str = sc.next();
		for(Txl t:list){
			if(str.equals(t.getSjh())){
				t.info();
			}
		}
	}

}
