package hw1209;

import java.util.Scanner;

public class A05 {
	/*
	 * �Ӽ��̽���������������ϴ���Ǹ���
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		if(a>b){
			System.out.println(a);
		}
		else if(b>a){
			System.out.println(b);
		}
	}
}
