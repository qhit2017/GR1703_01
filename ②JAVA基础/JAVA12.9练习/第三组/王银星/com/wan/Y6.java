package com.wan;

import java.util.Scanner;

public class Y6 {
	//�Ӽ��̽���3����������ϴ���Ǹ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int j=sc.nextInt();
		int k=sc.nextInt();
		int[]sz={i,j,k};
		int sum=0;
		for(int l:sz){
			if(sum<l){
				sum=l;
			}
		}
		System.out.println(sum);
	}

}
