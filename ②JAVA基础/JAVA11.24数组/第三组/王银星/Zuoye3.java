package com.zuoye;

import java.util.Scanner;

public class Zuoye3 {
	/*3 �Ӽ��̽���10�����������������У�Ȼ��ѭ����������е�Ԫ��
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]sz=new int[10];
		for(int i=0;i<sz.length;i++){
			System.out.println("�������"+(i+1)+"������");
			sz[i]=sc.nextInt();
		}
		for(int j=0;j<sz.length;j++){
			System.out.print(sz[j]+"\t");
	}
	}

}
