package com.ketang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Si implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入：1:商品编号，2:名称，3:价格，4:初始数量，中间请用    ,  隔开。");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setBianhao(Integer.parseInt(sz[0]));
		s.setName(sz[1]);
		s.setJiage(Integer.parseInt(sz[2]));
		s.setChushishuliang(Integer.parseInt(sz[3]));
		jihe.add(s);
		System.out.println("新增商品成功！");
	}

	@Override
	public void er(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		
		System.out.println("请输入商品编号和数量，中间用   ,    隔开");
		String a1=sc.next();
		String []sz=a1.split(",");
		boolean flag=true;
		Er s1=new Er();
		for(Er j:jihe){
			if(Integer.parseInt(sz[0])==j.getBianhao()){
				j.setChushishuliang(j.getChushishuliang()+Integer.parseInt(sz[1]));
				flag=false;
				
				s1.setBianhao(Integer.parseInt(sz[0]));
				s1.setChushishuliang(Integer.parseInt(sz[1]));
				s1.setName(j.getName());
				s1.setJiage(j.getJiage());
				
				
			}
			if(flag){
				System.out.println("进货失败！");
			}
		}
		
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入商品编号和数量，中间用   ,    隔开");
		String a2=sc.next();
		String sz[]=a2.split(",");
		boolean flag=true;
		for(Er j:jihe){
			if(Integer.parseInt(sz[0])==j.getBianhao()&&j.getChushishuliang()>Integer.parseInt(sz[1])){
				j.setChushishuliang(j.getChushishuliang()-Integer.parseInt(sz[1]));
				flag=false;
			}if(flag){
				System.out.println("销售失败！");
			}
			
		}
	}

	@Override
	public void si(List<Er>jihe) {
		// TODO Auto-generated method stub
		System.out.println("库存：");
		for(Er j:jihe){
			j.info();
		}
	}

	@Override
	public void liu(List<Er>arr) {
		// TODO Auto-generated method stub
		System.out.println("进货记录：");
		for(Er j:arr){
			j.info();
		}
	}

}
