package com.test3;

import java.util.List;
import java.util.Scanner;

public class ShangpinIserviceImp implements ShangpinIservice{

	@Override
	public void xinzeng(List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("新增商品，录入商品信息包含商品编号、名称、价格、初始数量,比如：01，啤酒，5，50");
		String n=sc.next();
		String []arr=n.split("，");
		Shangpin s=new Shangpin();
		s.setBianhao(arr[0]);
		s.setName(arr[1]);
		s.setPrice(Integer.parseInt(arr[2]));
		s.setShuliang(Integer.parseInt(arr[3]));
		list.add(s);
		System.out.println("新增成功！");
		
	}

	@Override
	public void jinhuo(List<Shangpin>list1,List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("进货，输入商品编号和数量，比如：01，50 ");
		//如有此编号商品，则增加相应数量，如没有则显示进货失败。
		String n=sc.next();
		String []arr=n.split("，");
		Shangpin s2=new Shangpin();
		String a=arr[0];
		String name="";
		int b=Integer.parseInt(arr[1]);
		boolean flag=true;
		for(Shangpin s:list){
			if(a.equals(s.getBianhao())){
				s.setShuliang(s.getShuliang()+b);
				s2.setName(s.getName());
				s2.setJinhuoshuliang(b);
				list1.add(s2);
				flag=false;
				System.out.println("进货成功！");
				break;
			}
		}
		if(flag){
			System.out.println("进货失败！");
		}
		
		
	}

	@Override
	public void xiaoshou(List<Shangpin>list1,List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("销售，输入商品编号和数量,比如：01，50");
		//如有此编号商品且商品数量大于销售数量，则减少相应数量，否则显示销售失败。
		String n=sc.next();
		Shangpin s1=new Shangpin();
		double i=0;
		String []arr=n.split("，");
		String a=arr[0];
		int b=Integer.parseInt(arr[1]);
		boolean flag=true;
		for(Shangpin s:list){
			if(a.equals(s.getBianhao())&&s.getShuliang()>=b){
				s.setShuliang(s.getShuliang()-b);
				System.out.println("销售成功！");
				flag=false;
				s1.setXiaoshoujine(b*s.getPrice());
				s1.setName(s.getName());
				list1.add(s1);
				break;
			}
		}
		if(flag){
			System.out.println("销售失败！");
		}
		
	}

	@Override
	public void findall(List<Shangpin> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("所有商品的信息：");
		for(Shangpin s:list){
			s.info();
		}
	}

	@Override
	public void jinhuojilu(List<Shangpin>list1,List<Shangpin> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("进货记录：");
		for(Shangpin s:list1){
			s.info1();
			
		}
	}

	@Override
	public void xiaoshoujine(List<Shangpin> list1, List<Shangpin> list,Scanner sc) {
		// TODO Auto-generated method stub
		for(Shangpin s:list1){
			s.info2();
			
		}
	}

}
