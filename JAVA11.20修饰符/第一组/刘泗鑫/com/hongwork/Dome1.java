package com.hongwork;

import java.util.Scanner;

public class Dome1 {
	
	/*
	 * 3����������С��x,y,z��������������ɴ�С�����
	 */
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ��С����");
		double x = sc.nextDouble();
		System.out.println("������ڶ���С����");
		double y = sc.nextDouble();
		System.out.println("�����������С����");
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
