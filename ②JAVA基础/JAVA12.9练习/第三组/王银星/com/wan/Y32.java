package com.wan;

import java.util.Scanner;

public class Y32 {
	/*
	 * �������� Int[] arr = {10,3,5,6,5,6,7,5} �Ƚ�����Ԫ�ؼ�10.
Ȼ���ж�ÿһ��Ԫ�أ������Ԫ���ܱ�2��������Ԫ�ؼ�2��
����ܱ�3��������Ԫ�ؼ�3������ܱ�5��������Ԫ�ؼ�4
������ܱ�2�������ܱ�3��������Ԫ�ؼ�5,������ܱ�3�������ܱ�5��������Ԫ�ؼ�6
������ܱ�2�������ܱ�5��������Ԫ�ؼ�7�������ͬʱ��2,3,5��������Ԫ�ؼ�8
������������е�Ԫ��

	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		while(true){
			if(i>=1){
				System.out.print(i%10);
				i=i/10;
			}else{
				break;
			}
		}
		
	}

}
