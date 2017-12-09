package com.WJH;

import java.util.List;
import java.util.Scanner;

public class Fangfa implements DDDDDD{

	@Override
	public void one(List<Fengzhuang> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入录入信息：姓名，编号，语文成绩，数学成绩，外语成绩");
		String str = sc.next();
		String[] arr = str.split("，");
		Fengzhuang a = new Fengzhuang();
		a.setName(arr[0]);
		a.setBianh(Integer.parseInt(arr[1]));
		a.setYuwen(Integer.parseInt(arr[2]));
		a.setShuxue(Integer.parseInt(arr[3]));
		a.setWaiyu(Integer.parseInt(arr[4]));
		a.setZong(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		list.add(a);
		System.out.println("录入成功！");
	}

	@Override
	public void two(List<Fengzhuang> list) {
		// TODO Auto-generated method stub
		for(Fengzhuang n:list){
			n.CJ();
		}
	}

	@Override
	public void three(List<Fengzhuang> list,Scanner sc) {
		// TODO Auto-generated method stub
		while(true){
			System.out.println("1.总分最高分\t2.数学最高分\t3.语文最高分\t4.外语最高分\t5.退出\n请输入");
			int c = sc.nextInt();
			if(c==1){
				int[] arr = new int[list.size()];
				for(int o=0;o<list.size();o++){
					arr[o] = list.get(o).getZong();
				}
				for(int m=0;m<arr.length-1;m++){
					for(int n=m+1;n<arr.length;n++){
						if(arr[m]<arr[n]){
							arr[m]=arr[n];
						}
					}
				}
				System.out.println("总分最高分为："+arr[0]+".");
			}else if(c==2){
				int[] arr = new int[list.size()];
				for(int o=0;o<list.size();o++){
					arr[o] = list.get(o).getShuxue();
				}
				for(int m=0;m<arr.length-1;m++){
					for(int n=m+1;n<arr.length;n++){
						if(arr[m]<arr[n]){
							arr[m]=arr[n];
						}
					}
				}
				System.out.println("数学最高分为："+arr[0]+".");
			}else if(c==3){
				int[] arr = new int[list.size()];
				for(int o=0;o<list.size();o++){
					arr[o] = list.get(o).getYuwen();
				}
				for(int m=0;m<arr.length-1;m++){
					for(int n=m+1;n<arr.length;n++){
						if(arr[m]<arr[n]){
							arr[m]=arr[n];
						}
					}
				}
				System.out.println("语文最高分为："+arr[0]+".");
			}else if(c==4){
				int[] arr = new int[list.size()];
				for(int o=0;o<list.size();o++){
					arr[o] = list.get(o).getWaiyu();
				}
				for(int m=0;m<arr.length-1;m++){
					for(int n=m+1;n<arr.length;n++){
						if(arr[m]<arr[n]){
							arr[m]=arr[n];
						}
					}
				}
				System.out.println("外语最高分为："+".");
			}else if(c==5){
				break;
			}else{
				System.out.println("对不起，输入有误，请重新输入。");
			}
			
		}
	}

}
