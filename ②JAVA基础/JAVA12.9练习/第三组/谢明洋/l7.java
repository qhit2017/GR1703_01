package ��ϰ;

import java.util.Scanner;

public class l7 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("�������������ȽϺ���������");
		
		int a=sc.nextInt();
		int b=sc.nextInt();
		int c=sc.nextInt();
		int d=a>b? a:b;
		int f=d>c? d:c;
		System.out.println(f);
	}

}
