package com.kaoshijuan2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San s=new Si();
		while(true){
			System.out.println("请输入：1：增加学生；2：查询所有学生；3：按照姓名查找学生；4："
					+ "按照性别查找；5：按照年龄查找；6：退出。");
			int shuru=sc.nextInt();
			if(shuru==1){
				s.yi(jihe, sc);
			}if(shuru==2){
				s.er(jihe, sc);
			}if(shuru==3){
				s.san(jihe, sc);
			}if(shuru==4){
				s.si(jihe, sc);
			}if(shuru==5){
				s.wu(jihe, sc);
			}if(shuru==6){
				System.out.println("程序已退出！");
				break;
			}
		}
	}

}
