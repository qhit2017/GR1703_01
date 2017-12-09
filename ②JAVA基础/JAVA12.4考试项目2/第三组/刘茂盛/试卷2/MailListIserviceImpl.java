package com.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MailListIserviceImpl implements MailListIservice{

	@Override
	public void tianjia(List<MailList>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入通讯录信息：比如：张三，男，123489");
		String n=sc.next();
		String []arr=n.split("，");
		MailList ml=new MailList();
		ml.setName(arr[0]);
		ml.setSex(arr[1].charAt(0));
		ml.setPhonenumber(arr[2]);
		list.add(ml);
		System.out.println("添加成功！");
		
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
		System.out.println("请输入姓名，比如：张三");
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
		System.out.println("请输入性别，比如：男");
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
		System.out.println("请输入电话，比如：132456");
		String number=sc.next();
		for(MailList ml:list){
			if(number.equals(ml.getPhonenumber())){
				ml.info();
			}
		}
	}

}
