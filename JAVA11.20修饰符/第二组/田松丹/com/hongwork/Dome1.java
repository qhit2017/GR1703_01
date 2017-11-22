package com.hongwork;

import java.util.Scanner;

public class Dome1 {
	
	/*
	 * 3、输入三个小数x,y,z，请把这三个数由大到小输出。
	 */
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个小数：");
		double x = sc.nextDouble();
		System.out.println("请输入第二个小数：");
		double y = sc.nextDouble();
		System.out.println("请输入第三个小数：");
		double z = sc.nextDouble();
		double max;
		
		if(x>=y){
			max=x;	
		}else{
			max=y;y=x;
		}
		if(max<=z){
			System.out.println(z+">"+max+">"+y);
		}else{
			if(z>=y){
				System.out.println(max+">"+z+">"+y);
			}else{
				System.out.println(max+">"+y+">"+z);
				
			}
		}

	
	}
	
}
