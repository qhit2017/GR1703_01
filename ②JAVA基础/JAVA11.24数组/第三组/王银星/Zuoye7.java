package com.zuoye;

import java.util.Scanner;

public class Zuoye7 {
	/*7 �Ӽ�������10������
	 * ����2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []sz= new int[10];
		for(int i=0;i<sz.length;i++){
			System.out.println("�������"+(i+1)+"������");
			sz[i]=sc.nextInt();
		
	}
		for(int i=0;i<sz.length;i++){
			System.out.print(sz[i]+"\t");
		}
		System.out.println();
		
		int t=sz[5];
		sz[5]=sz[1];
		sz[1]=t;
		
		int h=sz[3];
		sz[3]=sz[7];
		sz[7]=h;
		
		for(int j=0;j<sz.length;j++){
			
			System.out.print(sz[j]+"\t");
		}
		}

}
