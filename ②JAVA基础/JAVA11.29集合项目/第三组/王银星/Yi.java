package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import yi.Z3;
import yi.Z4;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San j= new Si();
		while(true){
			System.out.println("请按键：1 增加学生 2 查询所有学生 3 按照姓名查询学生信息 4 删除学生 5 修改学生信息 6 退出");
			int i=sc.nextInt();
			if(i==1){
				j.yi(jihe,sc);
			}
			else if(i==2){
				j.er(jihe);
			}
			else if(i==3){
				j.san(jihe,sc);
			}
			else if(i==4){
				j.si(jihe,sc);
			}
			else if(i==5){
				j.wu(jihe, sc);
				
			}
			else if(i==6){
				System.out.println("已退出");
				break;
			}
			else{
				System.out.println("菜鸡，六个数都输不对！重输。");
			}
			
		}
	}

}
