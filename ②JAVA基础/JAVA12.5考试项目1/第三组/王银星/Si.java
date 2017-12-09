package com.ketang;

import java.util.List;
import java.util.Scanner;

public class Si  implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入：姓名，编号、语文、数学、英语成绩，并计算出总成绩");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setName(sz[0]);
		s.setBianhao(Integer.parseInt(sz[1]));
		s.setYu(Integer.parseInt(sz[2]));
		s.setShu(Integer.parseInt(sz[3]));
		s.setYing(Integer.parseInt(sz[4]));
		s.setZong(Integer.parseInt(sz[2])+Integer.parseInt(sz[3])+Integer.parseInt(sz[4]));
		jihe.add(s);
		System.out.println("增加成功！");
	}

	@Override
	public void er(List<Er>jihe) {
		// TODO Auto-generated method stub
		//查询所有学生
		for(Er i:jihe){
			i.info();
		}
		System.out.println("查询完毕！");
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("进入子菜单：");
		while(true){
			System.out.println("1	:打印总分最高分;	2:打印语文最高分;	3:打印数学最高分;	4:打印英语最高分;	5:退出");
			int a=sc.nextInt();
			if(a==1){
				int z=0;
				String name1="";
				for(Er i:jihe){
					if(z<i.getZong()){
						z=i.getZong();
						name1=i.getName();
					}
				}
				System.out.println("总分最高分是："+z+"；姓名是："+name1);
			}else if(a==2){
				int yu=0;
				String name2="";
				for(Er i:jihe){
					if(yu<i.getYu()){
						yu=i.getYu();
						name2=i.getName();
					}
				}
				System.out.println("语文最高分是："+yu+"；姓名是："+name2);
			}else if(a==3){
				String name3="";
				int shu=0;
				for(Er i:jihe){
					if(shu<i.getShu()){
						shu=i.getShu();
						name3=i.getName();
					}
				}
				System.out.println("数学最高分是："+shu+"；姓名是："+name3);
			}else if(a==4){
				String name4="";
				int ying=0;
				for(Er i:jihe){
					if(ying<i.getYing()){
						ying=i.getYing();
						name4=i.getName();
					}
				}
				System.out.println("英语最高分是："+ying+"；姓名是："+name4);
			}else if(a==5){
				System.out.println("返回上一级！");
				break;
			}
			else {
				System.out.println("输入数字不规范，请重输！");
			}
		}
		
	}

}
