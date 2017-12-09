package com.KaoShi;

import java.util.List;
import java.util.Scanner;

public class Realize implements Service{

	@Override
	public void addto(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("添加通讯录信息   例如：张三,男,188");
		AddressList a1 = new AddressList();
		String str = sc.next();
		String[] arr = str.split(",");
		a1.setName(arr[0]);
		a1.setSex(arr[1].charAt(0));
		a1.setDianhua(arr[2]);
		list.add(a1);
		System.out.println("保存成功");
		
	}
	
	public void xianshisuoyou(List<AddressList> list) {
		// TODO Auto-generated method stub
		System.out.println("显示所有通讯录信息");
		for(AddressList i:list){
			i.info();
		}
	}

	@Override
	public void queryName(List<AddressList> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("按姓名搜索");
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
		System.out.println("按性别搜索");
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
		System.out.println("按电话搜索");
		String dianhua = sc.next();
		for(int s=0;s<list.size();s++){
			AddressList i=list.get(s);
			if(dianhua.equals(i.getDianhua())){
				i.info();
			}
			
		}
	}

	
}
