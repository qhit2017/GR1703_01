package com.KaoShi;

import java.util.List;
import java.util.Scanner;

public class Realize implements Service{

	@Override
	public void addto(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���ͨѶ¼��Ϣ   ���磺����,��,188");
		AddressList a1 = new AddressList();
		String str = sc.next();
		String[] arr = str.split(",");
		a1.setName(arr[0]);
		a1.setSex(arr[1].charAt(0));
		a1.setDianhua(arr[2]);
		list.add(a1);
		System.out.println("����ɹ�");
		
	}
	
	public void xianshisuoyou(List<AddressList> list) {
		// TODO Auto-generated method stub
		System.out.println("��ʾ����ͨѶ¼��Ϣ");
		for(AddressList i:list){
			i.info();
		}
	}

	@Override
	public void queryName(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����������");
		String name = sc.next();
		for(AddressList i:list){
			if(name.equals(i.getName())){
				i.info();
			}
		}
	}

	@Override
	public void querySex(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���Ա�����");
		String sex = sc.next();
		for(AddressList i:list){
			if(sex.charAt(0)==i.getSex()){
				i.info();
			}
		}
	}

	@Override
	public void queryDianhua(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���绰����");
		String dianhua = sc.next();
		for(int s=0;s<list.size();s++){
			AddressList i=list.get(s);
			if(dianhua.equals(i.getDianhua())){
				i.info();
			}
			
		}
	}

	
}
