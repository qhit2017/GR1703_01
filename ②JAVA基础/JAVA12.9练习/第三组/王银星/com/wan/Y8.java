package com.wan;

import java.util.Scanner;

public class Y8 {
	//�Ӽ��̽�������n�����1~n֮�����к�һλ��ǰһλ��1����  ���磺12,123,234,78,789��
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("����������n��");
		int n=sc.nextInt();
		out:for(int i=12;i<=n;i++){
			for(int c=i;c>=10;c=c/10){
				if(c%10-c/10%10!=1){
					continue out;
				}
			}
			System.out.println(i);
		}
		
		
	}

}
