package com.lizhixin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class serviceIM implements service{

	@Override
	public void Addto(List<People> list ,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ͨѶ¼��Ϣ�����磺�������У�13557468531");
		String str =sc.next();
		String[] arr =str.split("��");
		People p = new People();
		p.setName(arr[0]);
		p.setSex(arr[1].charAt(0));
		p.setPhinonum(arr[2]);
		list.add(p);
		System.out.println("��ӳɹ���");
	}

	@Override
	public void Inquireall(List<People> list) {
		// TODO Auto-generated method stub
		for(People p:list){
			p.info();
		}
	}

	@Override
	public void queryName(List<People> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������������");
		String str=sc.next();
		People p=new People();
		for(People a:list){
			if(str.equals(p.getName())){
				a.info();
				break;
			}
		}
	}

	@Override
	public void querySex(List<People> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������Ա�");
		String str=sc.next();
		People p=new People();
		for(People a:list){
			if(str.equals(p.getSex())){
				a.info();
				break;
			}
		}
	}

	@Override
	public void queryNum(List<People> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������Ա�");
		String str=sc.next();
		People p=new People();
		for(People a:list){
			if(str.equals(p.getPhinonum())){
				a.info();
				break;
			}
		}
	}

}
