package com.wan;

import java.util.Scanner;

public class Y10 {
	//�Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int he=0;
		for(int i=1;i<=n;i++){
			if(i%3==0){
				he++;
			}
		}
		System.out.println(he);
	}

}
